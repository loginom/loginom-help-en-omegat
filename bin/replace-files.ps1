param(
	[parameter(Mandatory=$true)][ValidateNotNullOrEmpty()][alias("o")]
	[string]$old,
	[parameter(Mandatory=$true)][ValidateNotNullOrEmpty()][alias("n")]
	[string]$new
)

$data_dir = (($MyInvocation.MyCommand.Path | split-path -parent | split-path -parent) + "\data\")

function ReplaceInputLinks($old_path, $new_path){

    $articles_list = Get-ChildItem -Path $data_dir -Filter '*.md' -Recurse -Exclude $old_path,$new_path

    foreach ($article in $articles_list){

        $old_link = GetRelativePath -basePath (split-path $article) -fullPath $old_path
        $new_link = GetRelativePath -basePath (split-path $article) -fullPath $new_path

        $text = (Get-Content $article.FullName -Encoding UTF8);

        if ($text -match "\]\(${old_link}"){
            $new_text = $text -replace "\]\(${old_link}","](${new_link}"
            $Utf8NoBomEncoding = New-Object System.Text.UTF8Encoding $False
            [System.IO.File]::WriteAllLines($article.FullName, $new_text, $Utf8NoBomEncoding)
        }
    }
}

function ReplaceOutputLinks($old_path, $new_path){
    $links = GetLinks -article $old_path
    $text =  (Get-Content $new_path -Encoding UTF8);
    $base_path = (split-path $new_path);
    foreach($link in $links.keys){
        $old_link = $link
        $new_link = GetRelativePath -basePath $base_path -fullPath $links."$link"
        $text = $text -replace "\]\(${old_link}","](${new_link}"
    }
    $Utf8NoBomEncoding = New-Object System.Text.UTF8Encoding $False
    [System.IO.File]::WriteAllLines($new_path, $text, $Utf8NoBomEncoding)
}

function GetRelativePath($basePath, $fullPath){
    Push-Location -Path $basePath
    (Resolve-Path -Path $fullPath -Relative) -replace "[\\]","/"
    Pop-Location
}

function GetLinks($article){
    (Get-Content $article -Encoding UTF8);
    $links = @{}
    $hrefs = ([regex]'\[.?\]\(([\.].+?)\)').Matches($text).Groups | Where-Object {$_.Name -eq '1'} | Select-Object value
    Push-Location -Path (split-path $article);
    foreach($href in $hrefs){
        $resolved_full_path = (Resolve-Path -LiteralPath $href.value);
        if ($resolved_full_path -ne ""){
            $links.($href.value) = $resolved_full_path;
        }
    }
    Pop-Location
    return $links;
}

function CopyFile($old_path, $new_path){

    if ($new_path -notmatch [regex]::Escape("$data_dir")){
        Write-Error -Message "Path not in data directory:`n$new_path"
        exit
    }
    if (Test-Path $new_path){
        Write-Error -Message "Path exists:`n$new_path"
        exit
    }
    $dst_dir =  split-path $new_path
    Write-Debug $dst_dir
    if ((Test-Path $dst_dir) -eq $False){
        New-Item -Path $dst_dir -ItemType 'Directory' -Force | Out-Null
    }

    Copy-Item -Path $old_path -Destination $new_path
}

function RemoveEmptyDirectories(){
    Push-Location -Path $data_dir
    $EmptyDirectories = Get-ChildItem $data_dir -Directory -Recurse | Where-Object {$null -eq (Get-ChildItem -Path $_.FullName -Recurse)}
    Write-Host "`nRemove empty directories`n" -ForegroundColor Yellow
    foreach ($EmptyDirectory in $EmptyDirectories)
    {
        Write-Host ("  " + ((Resolve-Path -Path $EmptyDirectory.FullName -Relative) -replace "[\\]","/"))
        Remove-Item $EmptyDirectory.FullName | Out-Null
    }
    Pop-Location
}

function ReplaceFile($old_path, $new_path){
    Write-Host "  $old_path`t=>`t$new_path"
    CopyFile -old_path $old_path -new_path $new_path
    ReplaceInputLinks -old_path $old_path -new_path $new_path
    if ($old_path -match "^.*\.md$"){
        ReplaceOutputLinks -old_path $old_path -new_path $new_path
    }
    Remove-Item -Path $old_path
}

# main

if ((Test-Path -Path $old) -eq $False){
    Write-Error -Message "Path not exists:`n$old"
    exit
}

# не проверяем $new для копирования в существующую директорию

Write-Host "`nReplace files`n" -ForegroundColor Yellow

if ((Test-Path -Path $old -PathType Container) -eq $True){
    Write-Debug "Replace directory"
    foreach ($file in (Get-ChildItem $old -File -Recurse)){
        ReplaceFile -old_path $file.FullName -new_path ($file.FullName -replace [regex]::Escape("$old"),"$new")
    }
} else {
    Write-Debug "Replace file"
    ReplaceFile -old_path $old -new_path $new
}

RemoveEmptyDirectories

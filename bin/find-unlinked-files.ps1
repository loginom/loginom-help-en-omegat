$data_dir = (($MyInvocation.MyCommand.Path | split-path -parent | split-path -parent) + "\data\")

Write-Host $data_dir

$articles_list = Get-ChildItem -Path $data_dir -Filter '*.md' -Recurse -Exclude SUMMARY.md

function GetArticleTitle($path){
    $title = select-string -Pattern "^# " -Path $path | select-object -expandproperty line
    $title = $title -replace "#(\s)?(\!\[.?\]\([\.].?\)(\s)?)?", ""
    return  $title
}

function CheckSummary(){
    $summary = (Get-Content "$data_dir\SUMMARY.md" -Encoding UTF8);
    Write-Host "Check summary" -ForegroundColor Yellow
    foreach ($article in $articles_list){
        $sub_name = $article.FullName -replace [regex]::Escape("$data_dir"),""
        $sub_name = $sub_name -replace [regex]::Escape("\"),"/"
        #$summary | Select-String $sub_name

        if ($null -eq ($summary | Select-String $sub_name) ){
            $title = GetArticleTitle($article.FullName);
            Write-Host "* [$title](./$sub_name)" -ForegroundColor Red
        }
    }
}

function CheckMedia(){
    $media_list =  (Get-ChildItem -Path "$data_dir\media" -Filter '*.*' -Recurse -File)
    Write-Host "Check media" -ForegroundColor Yellow
    foreach ($media in $media_list){
        $sub_name = $media.FullName -replace [regex]::Escape("$data_dir"),""
        $sub_name = $sub_name -replace [regex]::Escape("\"),"/"
        $in_using = (Get-ChildItem -Path $data_dir -Filter '*.md' -Recurse | Select-String -Pattern "$sub_name" -SimpleMatch)
        if ($null -eq $in_using){
            Write-Host $sub_name -ForegroundColor Red
            #remove-Item $media.FullName
        }
    }
}


CheckSummary
CheckMedia


$data_dir = (($MyInvocation.MyCommand.Path | split-path -parent | split-path -parent) + "\data\")

Write-Host $data_dir

$articles_list = Get-ChildItem -Path $data_dir -Filter '*.md' -Recurse

foreach ($article in $articles_list){
    $sub_name = $article.FullName -replace [regex]::Escape("$data_dir"),""
    $sub_level = ( $sub_name -replace "[^\\]","").Length
        
    if ($sub_level -gt 0){
        $relative_path = ''
        1..$sub_level | %{ $relative_path += '../'}
    } else {
        $relative_path = './'
    }

   # Write-Host ("${sub_name}: $relative_path $sub_level")

   (Get-Content $article.FullName) -replace "\][(]\/","](${relative_path}" | Set-Content $article.FullName
}
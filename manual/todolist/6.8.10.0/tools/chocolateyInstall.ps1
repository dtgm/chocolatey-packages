$packageName = 'todolist'
$url = 'http://abstractspoon.pbworks.com/w/file/fetch/90107432/todolist_68_exe.zip'
$checksum = '03174b2b7c30cdeea154453fcf7ac2de4ca25b79'
$checksumType = 'sha1'
$url64 = $url
$checksum64 = $checksum
$checksumType64 = $checksumType
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "ToDoList.exe"
$ignoreFile = Join-Path $toolsDir "WebUpdateSvc.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null
Set-Content -Path ("$ignoreFile.ignore") `
            -Value $null
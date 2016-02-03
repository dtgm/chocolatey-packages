$packageName = 'todolist'
$url = 'http://abstractspoon.pbworks.com/f/todolist_exe.zip'
$checksum = 'cfa8ea562520e933e6b9da511e6c474c288cd10b'
$checksumType = 'sha1'
$url64 = $url
$checksum64 = $checksum
$checksumType64 = $checksumType
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "ToDoList.exe"
$ignoreFileUp = Join-Path $toolsDir "TDLUninstall.exe"
$ignoreFileUn = Join-Path $toolsDir "TDLUpdate.exe"

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
Set-Content -Path ("$ignoreFileUp.ignore") `
            -Value $null
Set-Content -Path ("$ignoreFileUn.ignore") `
            -Value $null
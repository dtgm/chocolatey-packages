$packageName = '{{PackageName}}'
$packageSearch = 'sandboxie'
$installerType = 'exe'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'
$validExitCodes = @(0)

if ((Test-Path $Env:ProgramFiles\$packageSearch*) -Or (Test-Path ${Env:ProgramFiles(x86)}\$packageSearch*)) { 
  $silentArgs = '/upgrade /S'
} else {
  $silentArgs = '/install /S'
}
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"
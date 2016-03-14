$packageName = '{{PackageName}}'
$installerType = 'exe'
$url  = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'
$silentArgs = '-q -overwrite'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes
$packageName = 'thebrain.install'
$installerType = 'exe'
$url  = 'http://api.thebrain.com/?a=doDirectDownload&id=70'
$url64 = 'http://api.thebrain.com/?a=doDirectDownload&id=76'
$silentArgs = '-q -overwrite'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes
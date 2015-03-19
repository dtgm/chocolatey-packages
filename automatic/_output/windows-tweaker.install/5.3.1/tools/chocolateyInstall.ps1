$packageName = 'windows-tweaker.install'
$installerType = 'exe'
$url = 'https://tweaker.blob.core.windows.net/downloads/Windows_Tweaker_5.3.1-Setup.exe'
$checksum = '4875f9223dae4262cc0150574cfb620f9a4729c9'
$checksumType = 'sha1'
$silentArgs = '/S /v/qn'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
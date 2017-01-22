$packageName = 'logrotate'
$installerType = 'exe'
$silentArgs = '/S /v/qn'
$url = 'https://sourceforge.net/projects/logrotatewin/files/logrotateSetup_0.0.0.17_20170116.zip'
$checksum = 'd82efafdf085ef98a72dade1c7ac66c303f8fa902a7a80a5dceba3062e0f07fb'
$checksumType = 'sha1'
$validExitCodes = @(0)
$chocoTempDir = Join-Path $Env:Temp "chocolatey"
$tempDir = Join-Path $chocoTempDir "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
$zipFile = Join-Path $tempDir "$($packageName)Install.zip"
$installFile = Join-Path $tempDir 'setup.exe'
Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$zipFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"
Get-ChocolateyUnzip -FileFullPath "$zipFile" `
                    -Destination "$tempDir" `
                    -SpecificFolder "" `
                    -PackageName "$packageName"
Install-ChocolateyInstallPackage -PackageName "$packageName" `
                                 -FileType "$installerType" `
                                 -SilentArgs "$silentArgs" `
                                 -File "$installFile" `
                                 -ValidExitCodes $validExitCodes
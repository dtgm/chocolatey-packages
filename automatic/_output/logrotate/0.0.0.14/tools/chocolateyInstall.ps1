$packageName = 'logrotate'
$installerType = 'exe'
$silentArgs = '/S /v/qn'
$url = 'http://sourceforge.net/projects/logrotatewin/files/logrotateSetup_0.0.0.14_20150408.zip/download'
$checksum = '9e17ef48b6651584ea2693a4206212f46608b911'
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
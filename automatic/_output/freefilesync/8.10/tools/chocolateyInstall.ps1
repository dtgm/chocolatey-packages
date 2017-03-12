$packageName = 'freefilesync'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://www.freefilesync.org/download/FreeFileSync_8.10_Windows_Setup.exe'
$checksum = 'abaae1ed6c8ae98fdb2e9babc5cc87a8b848883ea24119973aeeae60336e2d07'
$checksumType = 'sha256'
$validExitCodes = @(0)
$userAgent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.0 (KHTML, like Gecko) Chrome/42.0 Safari/537.0 Edge/12.0'
$file = "$env:TEMP\FreeFileSync_Windows_Setup.exe"

Get-WebFile "$url" "$file" "$userAgent"

Install-ChocolateyInstallPackage -PackageName "$packageName" `
                                 -FileType "$installerType" `
                                 -SilentArgs "$silentArgs" `
                                 -File "$file" `
                                 -ValidExitCodes $validExitCodes `

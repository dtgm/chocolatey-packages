$packageName = 'freefilesync'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://www.freefilesync.org/download/FreeFileSync_9.0_Windows_Setup.exe'
$checksum = '456809429a0bfcb7925aa0e26da4cceb0cdf1209b10731ba199dcbdf2dff4a4e'
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

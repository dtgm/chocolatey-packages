$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
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

$packageName = '{{PackageName}}'
$installerType = 'exe'
# desktop:  create desktop shortcut; 0 = no, 1 = yes (default: 0)
# thumbs:   create desktop shortcut for thumbnails; 0 = no, 1 = yes (default: 0)
# group:    create group in Start Menu; 0 = no, 1 = yes (default: 0)
# allusers: desktop/group links are for all users; 0 = current user, 1 = all users
# assoc:    if used, set file associations; 0 = none, 1 = images only, 2 = select all (default: 0)
# assocallusers:  if used, set associations for all users (Windows XP only)
# ini:      if used, set custom INI file folder (system environment variables are allowed)
$silentArgs = "/silent /desktop=0 /thumbs=0 /group=1 /allusers=0 /assoc=0"
Write-Host $silentArgs
$urlArray = {{DownloadUrlx64}}
$url = $urlArray[0]
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'
$validExitCodes = @(0)
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# Combatibility - This function has not been merged
if (!(Get-Command Get-UrlFromFosshub -ErrorAction SilentlyContinue)) {
  Import-Module "$($toolsDir)\Get-UrlFromFosshub.ps1"
}
$url = Get-UrlFromFosshub $url
$url64 = Get-UrlFromFosshub $url64

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"
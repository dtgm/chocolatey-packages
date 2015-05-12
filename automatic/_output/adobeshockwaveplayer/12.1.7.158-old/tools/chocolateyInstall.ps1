$packageName = 'adobeshockwaveplayer'
$installerType = 'exe'
$checksum = '7bd7f120eb16aa218c55b5e2b22a63746bdfe9fe'
$checksumType = 'sha1'
$silentArgs = '/S /NCRC'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$pwdPath = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$ahkFile = "$pwdPath\shockwave.ahk"
$fileHippoName = "shockwave"

Import-Module "$($pwdPath)\Get-FilenameFromRegex.ps1"
$url1 = Get-FilenameFromRegex 'http://www.filehippo.com/download_shockwave/history/' 'download_shockwave/([\d]+)/"[^\d]+\s+12.1.7.157<' 'http://www.filehippo.com/download_shockwave/$1/'
Write-Host "Found URL which contains the download URL 1: $url1"
$url2 = Get-FilenameFromRegex "$url1" 'download_shockwave/download/([\w\d]+)/' 'http://www.filehippo.com/en/download_shockwave/download/$1/'
Write-Host "Found URL which contains the download URL 2: $url2"
$url3 = Get-FilenameFromRegex "$url2" '/download/file/([\w\d]+)/' 'http://www.filehippo.com/download/file/$1/'
Write-Host "Found download URL: $url3"

Start-Process 'AutoHotKey' $ahkFile
Install-ChocolateyPackage $packageName $installerType $silentArgs $url3 -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
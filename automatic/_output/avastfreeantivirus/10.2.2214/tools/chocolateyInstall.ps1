$packageName = 'avastfreeantivirus'
$installerType = 'exe'
$checksum = 'a074e6a6efad5529b9436db659561ec5a798881f'
$checksumType = 'sha1'
$silentArgs = '/silent'
$validExitCodes = @(0)
$pwdPath = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

Import-Module "$($pwdPath)\Get-FilenameFromRegex.ps1"
$url1 = Get-FilenameFromRegex 'http://www.filehippo.com/download_avast_antivirus/history/' 'download_avast_antivirus/([\d]+)/"[^\d]+\s+10.2.2214<' 'http://www.filehippo.com/download_avast_antivirus/$1/'
Write-Host "Found URL which contains the download URL 1: $url1"
$url2 = Get-FilenameFromRegex "$url1" 'download_avast_antivirus/download/([\w\d]+)/' 'http://www.filehippo.com/en/download_avast_antivirus/download/$1/'
Write-Host "Found URL which contains the download URL 2: $url2"
$url3 = Get-FilenameFromRegex "$url2" '/download/file/([\w\d]+)/' 'http://www.filehippo.com/download/file/$1/'
Write-Host "Found download URL: $url3"

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url3" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
$packageName = 'adobeshockwaveplayer'
$installerType = 'exe'
$silentArgs = '/S /NCRC'
$validExitCodes = @(0)
$pwdPath = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$ahkFile = Join-Path "$pwdPath" 'chocolateyInstall.ahk'

Import-Module (Join-Path "$pwdPath" 'Get-FilenameFromRegex.psm1')
$url1 = Get-FilenameFromRegex 'http://www.filehippo.com/download_shockwave/' '(?smi)download_shockwave/(\d+)?/?"[^>]+>.?Shockwave Player 11.5.7.609' 'http://www.filehippo.com/download_shockwave/$1/'
if (! $url1) {
  $lastPage = Get-FilenameFromRegex 'http://www.filehippo.com/download_shockwave/history/' '(?smi)class="pager-page-link">.*class="pager-page-link">(\d+)' '$1'
  Write-Host "Found archived pages: $lastPage"
  $page = 1
  Write-Host "Please wait. Looking for previous version URL in archived pages..."
  while (! $url1 -and $page -le $lastPage) {
    $url1 = Get-FilenameFromRegex "http://www.filehippo.com/download_shockwave/history/$page/" '(?smi)download_shockwave/(\d+)?/?"[^>]+>.?Shockwave Player 11.5.7.609' 'http://www.filehippo.com/download_shockwave/$1/'
    $page++
  }
  if (! $url1) {
    Write-Error "Could not get download URL 1.`n* Please notify maintainer at https://chocolatey.org/packages/adobeshockwaveplayer/ContactOwners`n "
    throw
  }
}
Write-Host "Found URL which contains the download URL 1: $url1"
$url2 = Get-FilenameFromRegex "$url1" 'download_shockwave/download/([\w\d]+)/' 'http://www.filehippo.com/en/download_shockwave/download/$1/'
Write-Host "Found URL which contains the download URL 2: $url2"
$url3 = Get-FilenameFromRegex "$url2" '/download/file/([\w\d]+)/' 'http://www.filehippo.com/download/file/$1/'
Write-Host "Found download URL: $url3"

Start-Process 'AutoHotKey' $ahkFile
Install-ChocolateyPackage -PackageName "$packageName" `
                               -FileType "$installerType" `
                               -SilentArgs "$silentArgs" `
                               -Url "$url3" `
                               -ValidExitCodes $validExitCodes
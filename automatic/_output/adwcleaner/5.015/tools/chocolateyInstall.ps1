$packageName = 'adwcleaner'
$checksum = '8fd7e2e7df27efa4c365a25f3d8a0f9cf3fe9d4f'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$ahkFile = Join-Path "$toolsDir" 'chocolateyInstall.ahk'
$installFile = Join-Path $toolsDir "$($packageName).exe"

Import-Module (Join-Path "$toolsDir" 'Get-FilenameFromRegex.psm1')
$url1 = Get-FilenameFromRegex 'http://www.filehippo.com/download_adwcleaner/' '(?smi)download_adwcleaner/(\d+)?/?"[^>]+>.?AdwCleaner 5.015' 'http://www.filehippo.com/download_adwcleaner/$1/'
if (! $url1) {
  $lastPage = Get-FilenameFromRegex 'http://www.filehippo.com/download_adwcleaner/history/' '(?smi)class="pager-page-link">.*class="pager-page-link">(\d+)' '$1'
  Write-Host "Found archived pages: $lastPage"
  $page = 1
  Write-Host "Please wait. Looking for previous version URL in archived pages..."
  while (! $url1 -and $page -le $lastPage) {
    $url1 = Get-FilenameFromRegex "http://www.filehippo.com/download_adwcleaner/history/$page/" '(?smi)download_adwcleaner/(\d+)?/?"[^>]+>.?AdwCleaner 5.015' 'http://www.filehippo.com/download_adwcleaner/$1/'
    $page++
  }
  if (! $url1) {
    Write-Error "Could not get download URL 1.`n* Please notify maintainer at https://chocolatey.org/packages/adobeshockwaveplayer/ContactOwners`n "
    throw
  }
}
Write-Host "Found URL which contains the download URL 1: $url1"
$url2 = Get-FilenameFromRegex "$url1" 'download_adwcleaner/download/([\w\d]+)/' 'http://www.filehippo.com/en/download_adwcleaner/download/$1/'
Write-Host "Found URL which contains the download URL 2: $url2"
$url3 = Get-FilenameFromRegex "$url2" '/download/file/([\w\d]+)/' 'http://www.filehippo.com/download/file/$1/'
Write-Host "Found download URL: $url3"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url3" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null

Start-Process 'AutoHotKey' $ahkFile
Start-Process $installFile
$packageName = '{{PackageName}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$installerType = 'exe'
$silentArgs = ''
$validExitCodes = @(0)

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$ahkFile = Join-Path $toolsDir 'chocolateyInstall.ahk'
$installFile = Join-Path $toolsDir "$($packageName).exe"

Import-Module (Join-Path "$toolsDir" 'Get-HtmlFromRegex.psm1')

$urlApp = "http://www.filehippo.com/download_$packageName"
$search = '(?smi)download_adwcleaner/(\d+)[^\r\n]+(\r\n)?[^\r\n]+(?=AdwCleaner {{PackageVersion}})'
$replace = "$filehippoUrl`$1/"
$urlAppId = Get-HtmlFromRegex $urlApp $search $replace
if (! $urlAppId) {
  $search = '(?smi)class="pager-page-link">.*class="pager-page-link">(\d+)'
  $replace = '$1'
  $maxPages = Get-HtmlFromRegex "$urlApp/history/" $search $replace
  Write-Debug "Found `"$maxPages`" pages of history"
  $currentPage = 1
  while (! $urlAppId -and $currentPage -le $maxPages) {
    $urlAppId = Get-HtmlFromRegex "http://www.filehippo.com/download_adwcleaner/history/$currentPage/" '(?smi)download_adwcleaner/(\d+)?/?"[^>]+>.?AdwCleaner {{PackageVersion}}' 'http://www.filehippo.com/download_adwcleaner/$1/'
    $currentPage++
  }
  if (! $urlAppId) {
    Write-Error "Could not get FileHippo download url from history.`n* Please notify maintainer at https://chocolatey.org/packages/{{PackageName}}/ContactOwners`n "
    throw
  }
}

$search = 'download_adwcleaner/download/([\w\d]+)/'
$replace = 'http://www.filehippo.com/en/download_adwcleaner/download/$1/'
$urlAppIdDownloadTemp = Get-HtmlFromRegex $urlAppId $search $replace 

$search = '/download/file/([\w\d]+)/'
$replace = 'http://www.filehippo.com/download/file/$1/'
$url = Get-HtmlFromRegex $urlAppIdDownloadTemp $search $replace

Get-ChocolateyWebFile -PackageName $packageName `
                      -FileFullPath $installFile `
                      -Url $url `
                      -Checksum $checksum `
                      -ChecksumType $checksumType

Set-Content -Path ("$installFile.gui") `
            -Value $null

Start-Process 'AutoHotKey' $ahkFile
Install-ChocolateyInstallPackage `
  -PackageName $packageName `
  -FileType $installerType `
  -SilentArgs $silentArgs `
  -File $installFile `
  -ValidExitCodes $validExitCodes
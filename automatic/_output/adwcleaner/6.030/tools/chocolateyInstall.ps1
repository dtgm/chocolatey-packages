$packageName = 'adwcleaner'
$checksum = '13534df7dbaaf193fca62c8ec7986ae4cf25a4a94ffe4ed8793ebd96ad1470fb'
$checksumType = 'sha256'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$ahkFile = Join-Path $toolsDir 'chocolateyInstall.ahk'
$installFile = Join-Path $toolsDir "$($packageName).exe"
Import-Module (Join-Path "$toolsDir" 'Get-HtmlFromRegex.psm1')

$urlAppId = 'http://filehippo.com/download_adwcleaner/71039/'
$search = 'download_adwcleaner/download/([\w\d]+)/'
$replace = 'http://www.filehippo.com/en/download_adwcleaner/download/$1/'
$urlTemp = Get-HtmlFromRegex $urlAppId $search $replace
$search = '/download/file/([\w\d]+)/'
$replace = 'http://www.filehippo.com/download/file/$1/'
$url = Get-HtmlFromRegex $urlTemp $search $replace

Get-ChocolateyWebFile -PackageName $packageName `
                      -FileFullPath $installFile `
                      -Url $url `
                      -Checksum $checksum `
                      -ChecksumType $checksumType

Set-Content -Path ("$installFile.gui") `
            -Value $null

Start-Process 'AutoHotKey' $ahkFile
Start-Process $installFile
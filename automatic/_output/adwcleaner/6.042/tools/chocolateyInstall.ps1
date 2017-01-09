$packageName = 'adwcleaner'
$checksum = 'e6febfa643fb29498c76d3d0561d61a5d5a74bf13b6cd41fcac92e97fda99ea3'
$checksumType = 'sha256'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$ahkFile = Join-Path $toolsDir 'chocolateyInstall.ahk'
$installFile = Join-Path $toolsDir "$($packageName).exe"
Import-Module (Join-Path "$toolsDir" 'Get-HtmlFromRegex.psm1')

$urlAppId = 'http://filehippo.com/download_adwcleaner/72653/'
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
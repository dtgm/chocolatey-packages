$packageName = 'adwcleaner'
$checksum = '9135e1ffa62acc4e726adf3502084161a899496413b48cc1e331ee4f58c017a4'
$checksumType = 'sha256'

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$ahkFile = Join-Path $toolsDir 'chocolateyInstall.ahk'
$installFile = Join-Path $toolsDir "$($packageName).exe"
Import-Module (Join-Path "$toolsDir" 'Get-HtmlFromRegex.psm1')

$urlAppId = 'http://filehippo.com/download_adwcleaner/69742/'
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
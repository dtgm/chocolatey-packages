$packageName = 'adobeshockwaveplayer'
$checksum = 'baa5a3ed14afe3336e270e32592b9f8d41f7b21bd917bedbe733c12a105f741d'
$checksumType = 'sha256'
$installerType = 'exe'
$silentArgs = '/S /NCRC'
$validExitCodes = @(0)

$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$ahkFile = Join-Path $toolsDir 'chocolateyInstall.ahk'
$installFile = Join-Path $toolsDir "$($packageName).exe"
Import-Module (Join-Path "$toolsDir" 'Get-HtmlFromRegex.psm1')

$urlAppId = 'http://filehippo.com/download_shockwave/66515/'
$search = 'download_shockwave/download/([\w\d]+)/'
$replace = 'http://www.filehippo.com/en/download_shockwave/download/$1/'
$urlTemp = Get-HtmlFromRegex $urlAppId $search $replace
$search = '/download/file/([\w\d]+)/'
$replace = 'http://www.filehippo.com/download/file/$1/'
$url = Get-HtmlFromRegex $urlTemp $search $replace

Start-Process 'AutoHotKey' $ahkFile
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
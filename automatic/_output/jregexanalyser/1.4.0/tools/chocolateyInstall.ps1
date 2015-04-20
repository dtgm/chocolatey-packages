# generated vars
$packageName = 'jregexanalyser'
$url = 'http://jregexanalyser.schwebke.com/jregexanalyser/jRegExAnalyser-1_4_0.zip'
$checksum = '76d898060a567ead5e16f565ecf0a2b6bf46952e'

# static vars
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -Url64bit "" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
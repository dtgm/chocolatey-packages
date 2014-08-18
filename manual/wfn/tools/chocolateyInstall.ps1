$packageName = 'wfn'
$url  = 'http://wfn.codeplex.com/downloads/get/752943'

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
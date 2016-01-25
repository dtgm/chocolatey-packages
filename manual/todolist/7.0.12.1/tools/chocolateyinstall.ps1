$ErrorActionPreference = 'Stop';

$packageName= 'todolist'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://abstractspoon.pbworks.com/f/todolist_exe.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'ZIP'
  url           = $url
  

  softwareName  = 'todolist*'
  checksum      = ''
  checksumType  = 'md5'
  checksum64    = ''
  checksumType64= 'md5'
}

Install-ChocolateyZipPackage $packageName $url $toolsDir

$files = get-childitem $installDir -include *.exe -recurse

foreach ($file in $files) {
   New-Item "$file.gui" -type file -force | Out-Null
}














$ErrorActionPreference = 'Stop';

$packageName = 'todolist'
$softwareName = 'todolist*'
$installerType = 'ZIP' 


UnInstall-ChocolateyZipPackage $packageName 'todolist_exe.zip' 

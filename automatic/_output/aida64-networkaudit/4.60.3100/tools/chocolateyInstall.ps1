$packageName = 'aida64-networkaudit'
$url = 'http://download.aida64.com/aida64networkaudit460.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$executable = "aida64.exe"
$shortcut_to_modify = "$Home\Desktop\aida64.exe.lnk"
$shortcut_modified = "$Home\Desktop\AIDA64 Network Audit.lnk" 

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$unzipLocation\$executable"

Install-ChocolateyDesktopLink $targetFilePath

Rename-Item $shortcut_to_modify $shortcut_modified
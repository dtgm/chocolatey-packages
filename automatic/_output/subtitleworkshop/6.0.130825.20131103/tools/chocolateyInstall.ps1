$packageName = 'subtitleworkshop' 
$installerType = 'exe'
$url = 'http://downloads.sourceforge.net/project/subworkshop/bin/Subtitle%20Workshop%206.0a/SubtitleWorkshop_6.0a_130825_installer.exe?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fsubworkshop%2F&ts=1383488124&use_mirror=heanet' 
$url64 = $url
$silentArgs = ' /S'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes

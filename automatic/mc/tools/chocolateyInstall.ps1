$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = '{{DownloadUrlx64}}'
$validExitCodes = @(0)
Install-ChocolateyPackage -packageName "$packageName" -installerType "$installerType" -url "$url" -silentArgs "$silentArgs" -validExitCodes $validExitCodes
$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$installerType = 'exe'	
$silentArgs = '/S'
# misuse 64-bit variable in auto pkg to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = '{{DownloadUrlx64}}'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
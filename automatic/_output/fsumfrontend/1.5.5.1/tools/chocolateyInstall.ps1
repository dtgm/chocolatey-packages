$packageName = 'fsumfrontend'
$packageVersion = '1.5.5.1'
# misuse 64-bit variable in auto pkg to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = 'http://sourceforge.net/projects/fsumfe/files/fsumfe/1.5.5.1/fsumfrontend-1.5.5.1-bin.zip/download'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir"
try {
	$installFile = Join-Path $toolsDir "$($packageName).exe"
	Set-Content -Path ("$installFile.gui") -Value $nul
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
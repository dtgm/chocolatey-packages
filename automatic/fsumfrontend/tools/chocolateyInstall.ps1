$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
# misuse 64-bit variable in auto pkg to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = '{{DownloadUrlx64}}'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir"
try {
	Set-Content -Path ("$toolsDir\$packageName.exe.gui") -Value $nul
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
$packageName = "jacksum"
$url = "http://prdownloads.sourceforge.net/jacksum/jacksum-1.7.0.zip?download"
$url64 = "$url"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum = "e3d840fa7b9949003ca731c7ce3e0281c350d821"
$checksumType = 'sha1'
$checksum64 = "e3d840fa7b9949003ca731c7ce3e0281c350d821"
$checksumType64 = 'sha1'
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"
try {
  $chocoBinPath = Join-Path "$Env:ChocolateyInstall" 'bin'
	$batPath = Join-Path $toolsDir 'windows'
	$batName = "$packageName.bat"
	Get-Content (Join-Path $batPath "$batName") | foreach-object { $_ -replace '(^java.*?")(.*?:\\.*?)(\\jacksum.jar)(".*?)',"`$1$toolsDir`$3`$4" } | Set-Content (Join-Path $chocoBinPath "$batName")
	#Cleanup
	Remove-Item -Recurse (Join-Path "$toolsDir" 'unix')
	Write-ChocolateySuccess "$packageName"
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}
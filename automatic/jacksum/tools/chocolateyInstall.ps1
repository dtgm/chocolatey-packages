$packageName = "{{PackageName}}"
$url = "{{DownloadUrlx64}}"
$url64 = "$url"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum = "{{Checksum}}"
$checksumType = 'sha1'
$checksum64 = "{{Checksumx64}}"
$checksumType64 = 'sha1'
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"
try {
  $chocoBinPath = Join-Path "$Env:ChocolateyInstall" 'bin'
	$batPath = Join-Path $toolsDir 'windows'
	$batName = "$packageName.bat"
	Get-Content (Join-Path $batPath "$batName") | foreach-object { $_ -replace '(^java.*?")(.*?:\\.*?)(\\jacksum.jar)(".*?)',"`$1$toolsDir`$3`$4" } | Set-Content (Join-Path $chocoBinPath "$batName")
	#Cleanup
	Remove-Item -Recurse (Join-Path "$toolsDir" 'unix')
} catch {
	throw $_.Exception
}
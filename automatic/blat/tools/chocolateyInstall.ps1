try {
	$packageName = "{{PackageName}}"
  $toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
	$urlArray = {{DownloadUrlx64}}
	$url = $urlArray[0]
	$url64 = $urlArray[1]
	# checksums do not appear to stay updated: http://www.blat.net/md5sum.txt
	#$checksum = '{{Checksum}}'
	#$checksumType = 'md5'
	#$checksum64 = '{{Checksumx64}}'
	#$checksumType64 = 'md5'
  #Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "$url64" -specificFolder "" -checksum "$checksum" -checksumType "$checksumType"  checksum64 "$checksum64" -checksumType64 "$checksumType64"
	Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "$url64"
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}
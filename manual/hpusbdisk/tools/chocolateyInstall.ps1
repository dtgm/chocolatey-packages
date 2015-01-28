try {
	$packageName = 'hpusbdisk'
	$checksum = '280298bcc4f6d2547babf36d8126cdef44fe4298'
	$checksumType = 'sha1'
  $scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  $nodePath = Join-Path $scriptPath 'HPUSBDisk.exe'
  Get-CheckSumValid -file $nodePath -checkSum $checksum -checksumType $checksumType
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
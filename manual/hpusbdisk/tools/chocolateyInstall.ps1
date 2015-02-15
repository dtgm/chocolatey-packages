try {
	$packageName = 'hpusbdisk'
	$checksum = '280298bcc4f6d2547babf36d8126cdef44fe4298'
	$checksumType = 'sha1'
  $toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  $nodePath = Join-Path $toolsDir 'HPUSBDisk.exe'
  Get-CheckSumValid -file $nodePath -checkSum $checksum -checksumType $checksumType
  Set-Content -Path ("$toolsDir\$packageName.exe.gui") -Value $nul
} catch {
  throw $_.Exception 
}
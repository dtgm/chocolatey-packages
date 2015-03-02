$packageName = 'hpusbdisk'
$checksum = '280298bcc4f6d2547babf36d8126cdef44fe4298'
$checksumType = 'sha1'
$toolsDir = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
$installFile = Join-Path $toolsDir 'HPUSBDisk.exe'

try {
  Get-CheckSumValid -File $installFile -Checksum $checksum -ChecksumType $checksumType
  Set-Content -Path ("$installFile.gui") -Value $null
} catch {
  throw $_.Exception 
}
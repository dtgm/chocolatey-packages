$packageName = 'hpusbdisk'
$url = 'http://tonigellida.x10.mx/owncloud/public.php?service=files&t=a08f5ac1cf0d0a223142a26d38d021d4&download'

try {
  $scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  $nodePath = Join-Path $scriptPath 'HPUSBDisk.exe'
  Get-ChocolateyWebFile "$packageName" "$nodePath" "$url"
  Install-ChocolateyPath "$nodePath" 'Machine' # Machine will assert administrative rights
  Install-ChocolateyDesktopLink "$nodePath"
  
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
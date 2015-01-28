$packageName = 'hpusbdisk'
$url = 'http://download808.mediafire.com/2hafcrdzt6sg/0yu175p1peyis5t/HPUSBDisk.exe'

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
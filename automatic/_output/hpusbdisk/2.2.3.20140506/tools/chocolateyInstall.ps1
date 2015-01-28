$packageName = 'hpusbdisk'
$url = 'https://vgdzhw.dm2302.livefilestore.com/y2mg0922iL0HfvW2X_VpHSo8U8-0u666Q5_UYRXgJ0ZlT8I5R-bUtanYwK6j3E7eW_EbhuLAIaXhShJgpnFOBHCzUloGK8HZ59qBAYgccjdW5w/HPUSBDisk.exe?download&psid=1'

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
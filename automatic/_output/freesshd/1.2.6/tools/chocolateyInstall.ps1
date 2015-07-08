#NOTE: Please remove any commented lines to tidy up prior to releasing the package, including this one

$packageName = 'freeSSHD'
$installerType = 'EXE' 
$url = 'http://www.freesshd.com/freeSSHd.exe'
$url64 = $url
$silentArgs = '/VERYSILENT /NOICON /SUPPRESSMSGBOXES'
$validExitCodes = @(0) 

# main helpers - these have error handling tucked into them already
# installer, will assert administrative rights
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes

#try { 
  #Start-ChocolateyProcessAsAdmin 'firewall add portopening tcp 22 "SSH and sFTP server"' 'netsh'
    
  #------- ADDITIONAL SETUP -------#
  # make sure to uncomment the error handling if you have additional setup to do

  #$processor = Get-WmiObject Win32_Processor
  #$is64bit = $processor.AddressWidth -eq 64

  
  # the following is all part of error handling
  #Write-ChocolateySuccess "$packageName"
#} catch {
#  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
#  throw 
#}
try { 
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  Install-ChocolateyPackage 'vcredist2008' 'exe' '/Q' 'http://download.microsoft.com/download/d/d/9/dd9a82d0-52ef-40db-8dab-795376989c03/vcredist_x86.exe'
  if($is64bit) {
  	Install-ChocolateyPackage 'vcredist2008_x64' 'exe' '/Q' 'http://download.microsoft.com/download/2/d/6/2d61c766-107b-409d-8fba-c39e61ca08e8/vcredist_x64.exe'
  }

  # the following is all part of error handling
  Write-ChocolateySuccess 'vcredist2008'
} catch {
  Write-ChocolateyFailure 'vcredist2008' "$($_.Exception.Message)"
  throw 
}
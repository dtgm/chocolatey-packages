try {
  $packageName = '{{PackageName}}'	
  $app = Get-WmiObject -class win32_product | Where-Object {$_.Name -like "$packageName"}
  if ($app) {
    $msiArgs = $('/x' + $app.IdentifyingNumber + ' /quiet /qn /norestart')
    Start-ChocolateyProcessAsAdmin $msiArgs 'msiexec'
  }
} catch {
  throw $_.Exception
}
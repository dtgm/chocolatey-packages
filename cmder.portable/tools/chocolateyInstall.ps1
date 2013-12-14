$packageName = 'cmder.portable'
$url = 'https://github.com/bliker/cmder/releases/download/v1.1.1/cmder.7z'

try { 
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
  
  if (![System.IO.Directory]::Exists($installDir)) {[System.IO.Directory]::CreateDirectory($installDir)}
  
  $tempDir = "$env:TEMP\chocolatey\$($packageName)"
  if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}

  $file = Join-Path $tempDir "$($packageName).7z"
  Get-ChocolateyWebFile "$packageName" "$file" "$url"

  Start-Process "7za" -ArgumentList "x -o`"$installDir`" -y `"$file`"" -Wait

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
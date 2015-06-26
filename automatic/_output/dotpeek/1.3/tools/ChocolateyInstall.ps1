$packageName = 'dotPeek'
$packageVersion = '1.3'

$url = "http://download.jetbrains.com/resharper/dotPeek32_1.3.exe"
$url64 = "http://download.jetbrains.com/resharper/dotPeek64_1.3.exe"

try {

  $scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  $packagePath = $(Split-Path -parent $scriptPath)
  $installPath = Join-Path $packagePath 'dotPeek.exe'

#  if (![System.IO.Directory]::Exists($installDir)) {[System.IO.Directory]::CreateDirectory($installDir)}

  Get-ChocolateyWebFile "$packageName" "$installPath" $url $url64

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
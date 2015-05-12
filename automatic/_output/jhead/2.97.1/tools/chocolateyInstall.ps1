$packageName = 'jhead'
$url = 'http://www.sentex.net/~mwandel/jhead/jhead.exe'

try {
  $installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  $installFile = join-path $installDir 'jhead.exe'

  Get-ChocolateyWebFile "$packageName" "$installFile" "$url"

  Write-ChocolateySuccess "$packageName"
}
catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}

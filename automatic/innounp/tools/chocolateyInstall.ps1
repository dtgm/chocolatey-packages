try {
  $packageName = "{{PackageName}}"
  $url = "{{DownloadUrlx64}}"
  $checksum = '{{Checksum}}'
  $checksumType = 'sha1'
  $toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  $rarFile = "$toolsDir\innounp.rar"
  Get-ChocolateyWebFile "$packageName" "$rarFile" "$url" -Checksum "$checksum" -ChecksumType "$checksumType" 
  if (Test-Path "${Env:ProgramFiles(x86)}\7-zip") {
    $cmd7z = "${Env:ProgramFiles(x86)}\7-zip\7z.exe"
  }	elseif (Test-Path "$Env:ProgramFiles\7-zip") {
    $cmd7z = "$Env:ProgramFiles\7-zip\7z.exe"
  } else {
    Write-Warning "7-zip was not found. Please install 7-zip."
    throw
  }
  Start-Process -FilePath "$cmd7z" -Wait -WorkingDirectory "$toolsDir" -ArgumentList "e $rarFile"
  Remove-Item "$rarFile"
} catch {
  throw $_.Exception
}

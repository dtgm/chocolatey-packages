$packageName = 'hte'
$url = 'http://sourceforge.net/projects/hte/files/ht-bin-win32/ht-2.1.0-win32.exe/download'
$checksum = '1e41af07208e2769d934a90c95a7fb9bd99ed073'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"
try {
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$installFile" `
                        -Url "$url" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType"
  Set-Content -Path ("$installFile.gui") `
              -Value $null
} catch {
  throw $_.Exception
}
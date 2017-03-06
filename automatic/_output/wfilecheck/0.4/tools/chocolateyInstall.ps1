$packageName = 'wfilecheck'
$urlArray = @('https://sourceforge.net/projects/whirlpoolfilech/files/0.4/WFileCheck32.exe', 'https://sourceforge.net/projects/whirlpoolfilech/files/0.4/WFileCheck64.exe')
$url = $urlArray[0]
$checksum = '6beca15e394d9c2070614145b97a972f9ec0c66d286a62e3120c5772fcd3628e'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '934087fafb8de7776cc79da395dc4329680fbbb033efea3e415c28bfe90dcdec'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"
try {
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$installFile" `
                        -Url "$url" `
                        -Url64bit "$url64" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType" `
                        -Checksum64 "$checksum64" `
                        -ChecksumType64 "$checksumType64"
  Set-Content -Path ("$installFile.gui") `
              -Value $null
} catch {
  throw $_.Exception
}

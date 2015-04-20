$packageName = 'wfilecheck'
$urlArray = @('http://sourceforge.net/projects/whirlpoolfilech/files/0.3.1/WFileCheck32.exe/download', 'http://sourceforge.net/projects/whirlpoolfilech/files/0.3.1/WFileCheck64.exe/download')
$url = $urlArray[0]
$checksum = '3e097e77e7ac685fc0aa7f281dd8380136d46e24'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '5c8a5d285949b6c786f994d9f71629312d540457'
$checksumType64 = 'sha1'
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

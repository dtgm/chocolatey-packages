$packageName = 'nssm'
$url = 'https://nssm.cc/release/nssm-2.24.zip'
$checksum = '727d1e42275c605e0f04aba98095c38a8e1e46def453cdffce42869428aa6743'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

if (Get-ProcessorBits 32) {
  $ignoreFolder = 'win64'
} else {
  $ignoreFolder = 'win32'
}

$installDir = (gci $toolsDir -dir nssm-*).FullName
$ignoreFile = Join-Path -Path $installDir `
                        -ChildPath $ignoreFolder |
              Join-Path -ChildPath "nssm.exe.ignore"

Set-Content -Path $ignoreFile `
            -Value $null
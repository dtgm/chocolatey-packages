$packageName = 'nssm'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://nssm.cc/release/nssm-2.24.zip'
$checksum = 'be7b3577c6e3a280e5106a9e9db5b3775931cefc'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

if (Get-ProcessorBits 32) {
    $ignoreFolder = 'win64'
} else {
   $ignoreFolder = 'win32'
}
Set-Content -Path ("$toolsDir\nssm-2.24\$ignoreFolder\nssm.exe.ignore") `
            -Value $null
$packageName = '{{PackageName}}'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'

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
Set-Content -Path ("$toolsDir\nssm-{{PackageVersion}}\$ignoreFolder\nssm.exe.ignore") `
            -Value $null
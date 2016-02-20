$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/S'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$validExitCodes = @(0)

$key = 'HKCU:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers'
Write-Verbose "Verify registry key exists:`t`"$key`""
$parts = $key -split '\\'
foreach ($i in $parts) {
    $path += $i + "\"
    if (!(test-path $path)) {
        New-Item -Path $path
    }
}

Set-ItemProperty -Path $path `
                 -Name "$env:Temp\fontmatrix\$env:PackageVersion\fontmatrixInstall.exe" `
                 -Value "WINXPSP3"

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"

Remove-ItemProperty -Path $path `
                    -Name "$env:Temp\fontmatrix\$env:PackageVersion\fontmatrixInstall.exe"

$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$dllName = 'msvcr71.dll'
$dllFullName = Join-Path $toolsDir $dllName
$dllChecksum = '432dbcf54b6f1142058b413a9d52668a2bde011d'
$dllChecksumType = 'sha1'

Get-ChecksumValid -File $dllFullName `
                  -Checksum $dllChecksum `
                  -ChecksumType $dllChecksumType

Write-Verbose "Check for conflicts and install required DLL into system folder."
if (Get-ProcessorBits 64) {
  $dstPath = Join-Path $Env:SystemRoot "SysWOW64"
} else {
  $dstPath = Join-Path $Env:SystemRoot "System32"
}
$installPath = Join-Path $dstPath $dllFullName
if (Get-ChecksumValid -File $installPath `
                -Checksum $dllChecksum `
                -ChecksumType $dllChecksumType) {
  Write-Host "`'$installPath`' is already installed."
} else {
  Write-Host "`'$installPath`' already exists."
  Write-Host "Backing up existing file to `'$installPath.bak`'"
  Rename-Item $installPath $installPath.bak
  Copy-Item $dllFullName $dstPath
}
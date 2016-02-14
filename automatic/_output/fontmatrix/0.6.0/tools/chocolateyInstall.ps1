$packageName = 'fontmatrix'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://fontmatrix.be/archives/win/fontmatrix-0.6.0-win32.exe'
$checksum = 'b6d9dd9377d73037b1bad4437db219448a2d4ff2'
$checksumType = 'sha1'
$validExitCodes = @(0)

Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' `
                 -Name "$env:Temp\fontmatrix\$env:PackageVersion\fontmatrixInstall.exe" `
                 -Value "WINXPSP3"

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"

Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers' `
                    -Name "$env:Temp\fontmatrix\$env:PackageVersion\fontmatrixInstall.exe"

$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$dllName = 'msvcr71.dll'
$dllFullName = Join-Path $toolsDir $dllName
$dllChecksum = '432dbcf54b6f1142058b413a9d52668a2bde011d'
$dllChecksumType = 'sha1'

Get-ChecksumValid -File $dllFullName `
                  -Checksum $dllChecksum `
                  -ChecksumType $dllChecksumType

$osBitness = Get-ProcessorBits
if ($osBitness -eq 64) {
  $dstPath = Join-Path $Env:SystemRoot "SysWOW64"
} else {
  $dstPath = Join-Path $Env:SystemRoot "System32"
}
$installPath = Join-Path $dstPath $dllFullName
if (Test-Path $installPath) {
  if (Get-ChecksumValid -File $installPath `
                  -Checksum $dllChecksum `
                  -ChecksumType $dllChecksumType) {
    Write-Host "File already exists."
  } else {
    Write-Host "`'$installPath`' already exists."
    Write-Host "Backing up existing file..."
    Rename-Item $installPath $installPath.bak
  }
}
Copy-Item $dllFullName $dstPath
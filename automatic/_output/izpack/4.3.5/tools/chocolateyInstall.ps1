# generated vars
$packageName = 'izpack'
$url = 'http://dist.codehaus.org/izpack/releases/4.3.5/IzPack-install-4.3.5.jar'
$checksum = '191845e9071d8ef82343fd5f964f877949db60a1'

# static vars
$checksumType = 'sha1'
$installerType = 'izpack'
$validExitCodes = @(0)

$chocTempDir = Join-Path $Env:Temp "chocolatey"
$pkgTempDir = Join-Path $chocTempDir "$packageName"
if (![System.IO.Directory]::Exists($pkgTempDir)) {[System.IO.Directory]::CreateDirectory($pkgTempDir)}
$installFile = Join-Path $pkgTempDir "izpack-4.3.5-installer.jar"

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$propsFile = Join-Path $toolsDir "chocolateyInstall.props"
$installArgs = "/c javaw -jar $($installFile) -console -options-auto $($propsFile)"

try {
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$installFile" `
                        -Url "$url" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType"

  Start-ChocolateyProcessAsAdmin -Statements "$installArgs" `
                                 -ExeToRun "cmd.exe" `
                                 -ValidExitCodes $validExitCodes
} catch {
  throw
}
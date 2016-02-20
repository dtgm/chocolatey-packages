# generated vars
$packageName = 'izpack'
$url = 'https://oss.sonatype.org/content/repositories/releases/org/codehaus/izpack/izpack-standalone-compiler/4.3.5/izpack-standalone-compiler-4.3.5.jar'
$checksum = '348d73f9e1527aeaa01c49fd4976a5977da28554'

# static vars
$checksumType = 'sha1'
$installerType = 'izpack'
$validExitCodes = @(0)

Write-Warning "!!!!!!!!!!!!!!!!!!!!!!!!!!"
$env:packageVersion
$env:packageVersion
$env:packageVersion
$env:packageVersion
$env:packageVersion
Write-Warning "!!!!!!!!!!!!!!!!!!!!!!!!!!"

$chocTempDir = Join-Path $Env:Temp "chocolatey"
$pkgTempDir = Join-Path $chocTempDir "$packageName"
if (![System.IO.Directory]::Exists($pkgTempDir)) {[System.IO.Directory]::CreateDirectory($pkgTempDir)}
$installFile = Join-Path $pkgTempDir "izpack-4.3.5-installer.jar"

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$propsFile = Join-Path $toolsDir "chocolateyInstall.props"
$installArgs = "java -jar $($installFile) $($propsFile)"

try {
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$installFile" `
                        -Url "$url" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType"

  Start-ChocolateyProcessAsAdmin -Statements "$installArgs" `
                                 -ExeToRun "powershell" `
                                 -ValidExitCodes $validExitCodes
} catch {
  throw
}
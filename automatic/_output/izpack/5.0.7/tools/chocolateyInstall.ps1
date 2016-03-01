# generated vars
$packageName = 'izpack'
$url = 'https://oss.sonatype.org/content/repositories/releases/org/codehaus/izpack/izpack-dist/5.0.7/izpack-dist-5.0.7.jar'
$checksum = '93776c211fc63ead639c0eeb6cdd58430256b4ce'

# static vars
$checksumType = 'sha1'
$installerType = 'izpack'
$validExitCodes = @(0)

$tempDir = Join-Path $env:Temp "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir) | Out-Null}
$tempDir = Join-Path $tempDir $env:packageVersion
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir) | Out-Null}
$installFile = Join-Path $tempDir "izpack-5.0.7-installer.jar"

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installXml = Join-Path $toolsDir "chocolateyInstall.xml"
$installArgs = "java -jar $($installFile) $($installXml)"

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
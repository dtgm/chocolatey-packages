# generated vars
$packageName = 'robocode'
$url = 'http://sourceforge.net/projects/robocode/files/robocode/1.9.2.4/robocode-1.9.2.4-setup.jar/download'
$checksum = 'dfd71faf81b5e4c58d1ef93e767f3fbcf58a4a3b'

# static vars
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "robocode.jar"
$ahkFile = Join-Path "$toolsDir" 'chocolateyInstall.ahk'
$validExitCodes = @(0)

# $Env:ChocolateyInstall\helpers\functions
Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"
$binRoot = Get-BinRoot
$installPath = Join-Path $binRoot $packageName
$installArgs = "/c javaw -jar $($installFile) $($installPath)"

Start-Process 'AutoHotKey' $ahkFile
Start-ChocolateyProcessAsAdmin -Statements "$installArgs" `
                             -ExeToRun "cmd.exe" `
                             -ValidExitCodes $validExitCodes
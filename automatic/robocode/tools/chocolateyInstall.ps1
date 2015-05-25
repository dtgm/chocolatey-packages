# generated vars
$packageName = '{{PackageName}}'
$url = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'

# static vars
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "{{PackageName}}.jar"
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

Install-ChocolateyPath $installPath 'User'

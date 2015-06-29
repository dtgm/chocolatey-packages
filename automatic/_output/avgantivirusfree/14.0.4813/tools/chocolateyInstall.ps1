$packageName = 'avgantivirusfree'
$installerType = 'exe'
$LCID = (Get-Culture).LCID
$SelectedLanguage = "/SelectedLanguage=$LCID"
$silentArgs = '/UILevel=silent /AppMode=setup /InstallToolbar=0 /ChangeBrowserSearchProvider=0 "$SelectedLanguage" /InstallSidebar=0 /ParticipateProductImprovement=0 /DontRestart /DisableScan /KillProcessesIfNeeded'
$url = 'http://files-download.avg.com/inst/av/avg_free_x86_all_2015_ltst_222.exe'
$checksum = 'd773d1022cd21a3d50dcbbff340b04ca'
$checksumType = 'md5'
$url64 = 'http://files-download.avg.com/inst/av/avg_free_x64_all_2015_ltst_221.exe'
$checksum64 = 'a284d80943929e843a09a7b779b45e64'
$checksumType64 = 'md5'
$validExitCodes = @(0) #exit codes http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $scriptPath "chocolateyInstall.ahk"

Start-Process $ahkExe $ahkFile
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"
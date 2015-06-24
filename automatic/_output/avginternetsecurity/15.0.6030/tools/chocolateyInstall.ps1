$packageName = 'avginternetsecurity'
$installerType = 'exe'
$LCID = (Get-Culture).LCID
$SelectedLanguage = "/SelectedLanguage=$LCID"
$silentArgs = '/UILevel=silent /AppMode=setup /InstallToolbar=0 /ChangeBrowserSearchProvider=0 "$SelectedLanguage" /InstallSidebar=0 /ParticipateProductImprovement=0 /DontRestart /DisableScan /KillProcessesIfNeeded'
$url = 'http://files-download.avg.com/inst/av/avg_isc_x86_all_2015_ltst_230.exe'
$checksum = '6c8cb20be128101a87f17033c69e2066'
$checksumType = 'md5'
$url64 = 'http://files-download.avg.com/inst/av/avg_isc_x64_all_2015_ltst_229.exe'
$checksum64 = '5fc06411a7dda8562f25fc10a849ac45'
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
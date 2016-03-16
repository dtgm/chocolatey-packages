Write-Verbose "Setting generated variables."
$packageName = 'github'
$installerType = 'exe'
$url = 'https://github-windows.s3.amazonaws.com/GitHubSetup.exe'
$checksum = '8E867AC85830537CC84F04E61B57195B'

Write-Verbose "Setting static variables."
$checksumType = 'md5'
$silentArgs = ''
$validExitCodes = @(0)

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $scriptPath "$($packageName)Install.ahk"
$ahkProc = Start-Process -FilePath $ahkExe `
                         -ArgumentList $ahkFile `
                         -PassThru
$ahkId = $ahkProc.Id
Write-Debug "$ahkExe start time:`t$($ahkProc.StartTime.ToShortTimeString())"
Write-Debug "Process ID:`t$ahkId"
                         
Write-Debug "$Env:ChocolateyInstall\helpers\functions"
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"

Write-Host "Microsoft`'s ClickOnce framework is downloading and executing the install files. Please wait..."

$ahkChild = Get-WmiObject -Class Win32_Process -Filter "ParentProcessID=$ahkId"
$ahkId = $ahkChild.ProcessId
Write-Debug "AHK child process ID:`t$ahkId"

if ( $ahkChild.HasExited ) { 
  Write-Warning "$ahkExe process was not found running. Please verify $packageName was installed."
  Write-Warning "If there was an issue, you may need to append --force to command."
} else {
  Write-Verbose "`"$ahkFile`" is waiting for windows to pounce on. This may take several minutes..."
  Wait-Process -Id $ahkId
}
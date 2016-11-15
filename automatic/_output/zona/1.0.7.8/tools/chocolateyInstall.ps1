$packageName = 'zona'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.bestbodymega.com/qxAl0oMthp91BGRQAdjG9jHg7tAvwW28L66zP64KZrcKyh9YE+QzSkuLGYn6KrWLGHcP+UyLVuSdHMZMY8IJ4VJqzx0K3w_iGC3Myoq7EuC2Hac3lQjZp2Y4isRlaj9kd75+sZRqh+bSc56hVfgQ+8OyGA51jg==-CxWAaHR0cHM6Ly9kbC5hcHB6b25hLm9yZy9ab25hU2V0dXBbMllvRTJdLmV4ZQM='
$checksum = '10367fe8f0cd7c330332758006e389ca68351656295d7c9dcc2fd51b52327d31'
$checksumType = 'sha256'
$validExitCodes = @(0) #exit codes http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = Join-Path $scriptPath "chocolateyInstall.ahk"
$ahkExe = 'AutoHotKey'
Start-Process $ahkExe $ahkFile

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
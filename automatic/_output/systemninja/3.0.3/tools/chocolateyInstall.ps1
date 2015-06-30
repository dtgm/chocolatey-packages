$packageName = 'systemninja'
$installerType = 'EXE'
$url = 'http://thewebatom.net/downloads/download/31/?version=3.0.3'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

$processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $targetFilePath = "${Env:ProgramFiles(x86)}\System Ninja\System Ninja.exe"
  } else {
    $unpath = "$Env:ProgramFiles\System Ninja\System Ninja.exe"
  }

Install-ChocolateyDesktopLink $targetFilePath
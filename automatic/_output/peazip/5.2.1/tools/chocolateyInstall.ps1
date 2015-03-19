$packageName = 'peazip'
$installerType = 'EXE'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

$processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $url = 'http://surfnet.dl.sourceforge.net/project/peazip/5.2.1/peazip-plain-5.2.1.WIN64.exe'
  } else {
    $url = 'http://surfnet.dl.sourceforge.net/project/peazip/5.2.1/peazip-plain-5.2.1.WINDOWS.exe'
  }

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes


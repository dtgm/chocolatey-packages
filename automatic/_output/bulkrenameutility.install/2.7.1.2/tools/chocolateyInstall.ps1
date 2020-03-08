$packageName = 'bulkrenameutility.install'
$installerType = 'EXE'
$url  = 'http://www.bulkrenameutility.co.uk/Downloads/BRU_Setup_WinNTx86.exe'
$url64 = 'http://www.bulkrenameutility.co.uk/Downloads/BRU_Setup_WinNTx64.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"
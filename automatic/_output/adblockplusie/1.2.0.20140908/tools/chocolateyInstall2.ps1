$packageName = 'adblockplusie'
$installerType = 'EXE'
$url = 'https://downloads.adblockplus.org/adblockplusie-1.2.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$version = '1.2.0.20140908'
$versioninstalledpath = "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\EC7EE32C3A1C49F48A0FE9A09C6CEDE6\InstallProperties"

$versioninstalled=Get-ItemProperty $versioninstalledpath | Select -expand DisplayVersion

if ($versioninstalled -eq $version) {
       Write-Host "Adblock Plus for Internet Explorer $version is already installed."
	
	} elseif ($versioninstalled -lt $version) {
       Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes
	   Write-Host "Adblock Plus for Internet Explorer $version has been installed."
	   
	} elseif ($versioninstalled -gt $version) {
       Write-Host "Wait for package update on the choco feed."
    }
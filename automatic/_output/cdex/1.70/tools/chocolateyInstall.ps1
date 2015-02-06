$packageName = 'cdex'
#$version = '1.70'
$version = '1.70.5.2014'
$uninstallRegistryPath_x86 = "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\CDex"
$uninstallRegistryPath_x64 = "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\CDex"
$installerType = 'EXE'
$url = 'http://softlayer-ams.dl.sourceforge.net/project/cdexos/cdexos/CDex 1.70/CDex-1.70-win32.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$mantainer = 'tonigellida'
$executable = "CDex.exe"
$shortcut_to_modify = "$Home\Desktop\CDex.exe.lnk"
$shortcut_modified = "$Home\Desktop\CDex.lnk" 

try {

	$processor = Get-WmiObject Win32_Processor
	$is64bit = $processor.AddressWidth -eq 64
	
	if ($is64bit) {
	
 		if (Test-Path $uninstallRegistryPath_x64) {
			$installedVersion = (Get-ItemProperty $uninstallRegistryPath_x64).DisplayVersion
		}

	} else {
  
		if (Test-Path $uninstallRegistryPath_x86) {
			$installedVersion = (Get-ItemProperty $uninstallRegistryPath_x86).DisplayVersion
		}	
		
	}
	
	if ($installedVersion -gt $version) {
		Write-Host "Your $packageName $installedVersion is higher than the $version proporcionated by chocolatey repo."
		Write-Host "Please wait or contact the mantainer $mantainer to update this package."
		Write-Host "When the package is updated try another time. Thanks."
	}
	
	if ($installedVersion -eq $version) {
		Write-Host "$packageName $version is already installed."
		
	} else {

        # Download and install the program

		Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

		  $processor = Get-WmiObject Win32_Processor
		  $is64bit = $processor.AddressWidth -eq 64
		  if ($is64bit) {
			$exeLocation = "${Env:ProgramFiles(x86)}\CDex\CDex.exe"
		  } else {
			$exeLocation = "$Env:ProgramFiles\CDex\CDex.exe"
		  }
 
		$targetFilePath = "$exeLocation\$executable"

		Install-ChocolateyDesktopLink $targetFilePath

		Rename-Item $shortcut_to_modify $shortcut_modified
		
		}
	
	Write-ChocolateySuccess $packageName
	
} catch {

		Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
		throw 
}
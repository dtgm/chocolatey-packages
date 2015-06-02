$packageName = 'kcleaner'
$version = '2.4.0.56'
$exeToVersioning_x86 = "$Env:ProgramFiles\KC Softwares\KCleaner\KCleaner.exe"
$exeToVersioning_x64 = "${Env:ProgramFiles(x86)}\KC Softwares\KCleaner\KCleaner.exe"
$installerType = 'EXE'
$url = 'http://www.kcsoftwares.com/files/kcleaner_lite.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$mantainer = 'tonigellida'

try {

	$processor = Get-WmiObject Win32_Processor
	$is64bit = $processor.AddressWidth -eq 64
	
	if ($is64bit) {
	
 		if (Test-Path $exeToVersioning_x64) {
			$installedVersion = (Get-Command $exeToVersioning_x64).FileVersionInfo.FileVersion
		}

	} else {
  
		if (Test-Path $exeToVersioning_x86) {
			$installedVersion = (Get-Command $exeToVersioning_x86).FileVersionInfo.FileVersion
		}	
		
	}
	
	if ($installedVersion -gt $version) {
		Write-Host "Your $packageName $installedVersion is higher than the $version proporcionated by chocolatey repo."
		Write-Host "Please wait or contact the mantainer $mantainer to update this package."
		Write-Host "When the package is updated try another time. Thanks."
		
	}elseif ($installedVersion -eq $version) {
		Write-Host "$packageName $version is already installed."
		
	} else {

        # Download and install the program

		Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes
		
		}
	
	Write-ChocolateySuccess $packageName
	
} catch {

		Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
		throw 
}
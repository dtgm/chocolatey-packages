$packageName = 'githubforwindows'
#$version = '2.3.1.20140822'
$version = '2.3.1.1'
$uninstallRegistryPath = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\5f7eb300e2ea4ebf'
$installerType = 'EXE'
$url = 'https://github-windows.s3.amazonaws.com/GitHubSetup.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

#Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

try {

	if (Test-Path $uninstallRegistryPath) {
		$installedVersion = (Get-ItemProperty $uninstallRegistryPath).DisplayVersion
	}

	if ($installedVersion -eq $version) {
		Write-Host "$packageName $version is already installed."
	} else {

        # Download and install the program

		#AUTOIT ANCIENT SCRIPT

	    $scriptDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
	    $installerFile = Join-Path $scriptDir 'githubforwindows.au3'

	    $tempDir = "$env:TEMP\chocolatey\githubforwindows"
	    if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
	    $file = Join-Path $tempDir "githubsetup.exe"
	    Get-ChocolateyWebFile 'githubforwindows' "$file" 'http://github-windows.s3.amazonaws.com/GitHubSetup.exe'
	  
	    write-host "Installing `'$file`' with AutoIt3 using `'$installerFile`'"
	    $installArgs = "/c autoit3 `"$installerFile`" `"$file`""
	    Start-ChocolateyProcessAsAdmin "$installArgs" 'cmd.exe'
	    sleep(15)
	    Write-ChocolateySuccess 'githubforwindows'
	  } catch {
	    Write-ChocolateyFailure 'githubforwindows' "$($_.Exception.Message)"
	    throw 
	  }
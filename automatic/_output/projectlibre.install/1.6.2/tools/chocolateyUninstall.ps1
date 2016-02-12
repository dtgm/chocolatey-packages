$packageName = 'projectlibre.install'
$packageSearch = "ProjectLibre*"
$fileType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$validExitCodes = @(0)

Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
				   'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
				   'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
		    -ErrorAction:SilentlyContinue `
| Where-Object   { $_.DisplayName -like $packageSearch } `
| ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
								    -FileType "$fileType" `
								    -SilentArgs "$($_.PSChildName) $silentArgs" `
								    -ValidExitCodes $validExitCodes }
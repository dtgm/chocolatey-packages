$packageName = 'combofix'
$url = 'http://download.bleepingcomputer.com/sUBs/ComboFix.exe'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\ComboFix.exe"

try {

	Get-ChocolateyWebFile $packageName $fileFullPath $url

	Install-ChocolateyDesktopLink $fileFullPath

	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}
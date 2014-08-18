$packageName = 'pathmanager'
$url  = 'http://sourceforge.net/projects/pathmanager/files/Path%20Manager/PathManager-1.1.1/PathManager-1.1.1.exe/download'
$fileType = 'exe'
 
try {
	$scriptPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 

	$portableFile = Join-Path $scriptPath "$($packageName).$($fileType)"
	Get-ChocolateyWebFile "$packageName" "$portableFile" "$url"
	
	Write-ChocolateySuccess "$packageName"
} catch {
	Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
	throw
}
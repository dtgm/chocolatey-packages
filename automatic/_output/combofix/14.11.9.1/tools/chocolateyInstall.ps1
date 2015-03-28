$packageName = 'combofix'
$url = 'http://download.bleepingcomputer.com/sUBs/ComboFix.exe'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\ComboFix.exe"
$shortcut_to_modify = "$Home\Desktop\ComboFix.exe.lnk"
$shortcut_modified = "$Home\Desktop\ComboFix.lnk" 

Get-ChocolateyWebFile $packageName $fileFullPath $url

	if (Test-Path $shortcut_modified){
		Remove-Item $shortcut_modified
	}

Install-ChocolateyDesktopLink $fileFullPath

Rename-Item $shortcut_to_modify $shortcut_modified
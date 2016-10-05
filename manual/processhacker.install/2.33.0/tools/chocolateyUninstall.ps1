$uninstaller = ls $env:ChocolateyInstall\lib\processhacker\unins*.exe
if (($uninstaller|measure-object).Count -gt 1)
{
$uninstaller = $uninstaller[0]
}

&$uninstaller /VERYSILENT /SUPPRESSMSGBOXES /NORESTART 
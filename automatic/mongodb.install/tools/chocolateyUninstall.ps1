$packageName = '{{PackageName}}'
$packageSearch = "mongodb*"
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$validExitCodes = @(0,3010)

If (Get-Service MongoDB)
{
    # need to find where mongod.exe lives in order to remove the service
    $ServicePath = (Get-CIMInstance win32_service -filter 'Name like "%MongoDB%"').PathName
    # split the path by spaces, except where the space is in between quotes.  Remove quotes from either side
    $MongodPath = ($ServicePath -split ' (?=(?:[^"]|"[^"]*")*$)')[0].Replace("""", "")

    if (Test-Path $MongodPath)
    {
        & $MongodPath --remove
    }

    # Should we remove the config too?
    #$MongodCfg = ($ServicePath -split ' (?=(?:[^"]|"[^"]*")*$)')[2]    
    #Remove-Item $MongodCfg
}

Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                         'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                         'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                 -ErrorAction:SilentlyContinue `
| Where-Object   {$_.DisplayName -like $packageSearch} `
| ForEach-Object {Uninstall-ChocolateyPackage -PackageName $packageName `
                                              -FileType $installerType `
                                              -SilentArgs "$($_.PSChildName) $silentArgs" `
                                              -ValidExitCodes $validExitCodes}
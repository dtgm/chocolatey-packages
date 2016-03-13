# default template
https://github.com/chocolatey/choco/blob/master/src/chocolatey/infrastructure.app/templates/ChocolateyUninstallTemplate.cs

#NOTE: Please remove any commented lines to tidy up prior to releasing the package, including this one
# REMOVE ANYTHING BELOW THAT IS NOT NEEDED
# If this is an MSI, cleaning up comments is all you need.
# If this is an exe, change installerType and silentArgs
# Auto Uninstaller should be able to detect and handle registry uninstalls (if it is turned on, it is in preview for 0.9.9).
$ErrorActionPreference = 'Stop'; # stop on all errors
$packageName = '[[PackageName]]'
$softwareName = '[[PackageName]]*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
$installerType = 'MSI' 
#$installerType = 'EXE' 
$silentArgs = '/qn /norestart'
# https://msdn.microsoft.com/en-us/library/aa376931(v=vs.85).aspx
$validExitCodes = @(0, 3010, 1605, 1614, 1641)
if ($installerType -ne 'MSI') {
  # The below is somewhat naive and built for EXE installers
  $silentArgs = '/S' # /s /S /q /Q /quiet /silent /SILENT /VERYSILENT -s - try any of these to get the silent installer
  $validExitCodes = @(0)
}
$uninstalled = $false
Get-ItemProperty  -Path @($machine_key6432,$machine_key, $local_key) `
                  -ErrorAction SilentlyContinue `
  | ? { $_.DisplayName -like ""$softwareName"" } `
  | Select -First 1 `
  | % { 
        $file = ""$($_.UninstallString)""
     
        if ($installerType -eq 'MSI') {
        # The Product Code GUID is all that should be passed for MSI, and very 
        # FIRST, because it comes directly after /x, which is already set in the 
        # Uninstall-ChocolateyPackage msiargs (facepalm).
        $silentArgs = ""$($_.PSChildName) $silentArgs""
        
        # Don't pass anything for file, it is ignored for msi (facepalm number 2) 
        # Alternatively if you need to pass a path to an msi, determine that and 
        # use it instead of the above in silentArgs, still very first
        $file = ''
        }      
        Uninstall-ChocolateyPackage -PackageName $packageName `
                                    -FileType $installerType `
                                    -SilentArgs ""$silentArgs"" `
                                    -ValidExitCodes $validExitCodes `
                                    -File ""$file""
        $uninstalled = $true
      }
if (!($uninstalled)) {
    Write-Warning ""$packageName has already been uninstalled by other means.""
}
## OTHER HELPERS
## https://github.com/chocolatey/choco/wiki/HelpersReference
#Uninstall-ChocolateyZipPackage
#Uninstall-BinFile # Only needed if you added one in the installer script, choco will remove the ones it added automatically.
#remove any shortcuts you added"


$match_pattern = "\/(?<option>([a-zA-Z]+)):(?<value>([`"'])?([a-zA-Z0-9- _\\:\.]+)([`"'])?)|\/(?<option>([a-zA-Z]+))"

gc .\chocolateyUninstall.ps1 | ? {$_ -notmatch "^\s*#"} | ? {$_ -match ".*[^``]#.*"}
gc .\chocolateyUninstall.ps1 | ? {$_ -notmatch "^\s*#"} | ? {$_ -replace '(^.*)\s?[^``]#','$1'}


List various EXE installers?


@"
# IMPORTANT: Before releasing this package, copy/paste the next 2 lines into PowerShell to remove all comments from this file:
#   $f='c:\path\to\thisFile.ps1'
#   gc $f | ? {$_ -notmatch "^\s*#"} | % {$_ -replace '(^.*?)\s*?[^``]#.*','$1'} | Out-File $f+".~" -en utf8; mv -fo $f+".~" $f
"@
# If this is an MSI, cleaning up comments is all you need.
# If this is an exe, change installerType and uncomment matching silentArgs in codeblock below.
$installerType = 'MSI' 
#$installerType = 'EXE' 

# Auto Uninstaller should be able to detect and handle registry uninstalls (if it is turned on, it is in preview for 0.9.9).
$ErrorActionPreference = 'Stop'; # stop on all errors
$packageName = '[[PackageName]]'
$softwareName = '[[PackageName]]*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

$silentArgs = '/qn /norestart' # MSI silent arguments
# https://msdn.microsoft.com/en-us/library/aa376931(v=vs.85).aspx
$validExitCodes = @(0, 3010, 1605, 1614, 1641)
if ($installerType -ne 'MSI') {
  # Uncomment matching EXE type (sorted by most to least common)
  #$silentArgs = '/S'               # NSIS
  #$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  #$silentArgs = '/s'               # InstallShield
  #$silentArgs = '/s /v"/qn"'       # InstallShield with MSI
  #$silentArgs = '/s /f1"$issPath"' # InstallShield, requires uninstall.iss file
  #$silentArgs = '/s /a /s /sms /f1"$issPath"' # InstallShield's PackagefortheWeb (PFTW), requires uninstall.iss file
  #$issPath = $true # if using $issPath in silentArgs
  #$silentArgs = '/s'               # Wise InstallMaster
  #$silentArgs = '-q'               # Install4j
  #$silentArgs = '-s -u'            # Ghost
  # Note that some installers, in addition to the silentArgs above, may also need assistance of AHK to achieve silence.
  #$silentArgs = ''                 # none; make silent with input macro script like AutoHotKey (AHK)
                                    #       https://chocolatey.org/packages/autohotkey.portable
  $validExitCodes = @(0)
}

if ($issPath) {
  $toolsDir   = ""$(Split-Path -parent $MyInvocation.MyCommand.Definition)""
  $issFileName = "uninstall.iss"
  $issPath = Join-Path $toolsDir $issFileName
}

$key = Get-ItemProperty -Path @($machine_key6432,$machine_key, $local_key) `
                        -ErrorAction SilentlyContinue `
         | ? { $_.DisplayName -like ""$softwareName"" }

if ($key.Count -eq 1) {
  $key | % { 
    $file = ""$($_.UninstallString)""

    if ($installerType -eq 'MSI') {
      # The Product Code GUID is all that should be passed for MSI, and very 
      # FIRST, because it comes directly after /x, which is already set in the 
      # Uninstall-ChocolateyPackage msiargs (facepalm).
      $silentArgs = ""$($_.PSChildName) $silentArgs""
      
      # Don't pass anything for file, it is ignored for msi (facepalm number 2) 
      # Alternatively if you need to pass a path to an msi, determine that and 
      # use it instead of the above in silentArgs, still very first
      $file = ''
    }
    Uninstall-ChocolateyPackage -PackageName $packageName `
                                -FileType $installerType `
                                -SilentArgs ""$silentArgs"" `
                                -ValidExitCodes $validExitCodes `
                                -File ""$file""
  }
} elseif ($key.Count -eq 0) {
  Write-Warning ""$packageName has already been uninstalled by other means.""
} elseif ($key.Count -gt 1) {
  Write-Warning ""$key.Count matches found!""
  Write-Warning ""To prevent accidental data loss, no programs will be uninstalled.""
  Write-Warning ""Please alert package maintainer the following keys were matched:""
  $key | % {Write-Warning ""$_.DisplayName""}
}

## OTHER HELPERS
## https://github.com/chocolatey/choco/wiki/HelpersReference
#Uninstall-ChocolateyZipPackage
#Uninstall-BinFile # Only needed if you added one in the installer script, choco will remove the ones it added automatically.
#remove any shortcuts you added"


#http://unattended.sourceforge.net/InnoSetup_Switches_ExitCodes.html

# EXE; InstallShield
# http://www.itninja.com/blog/view/installshield-setup-silent-installation-switches
# generate an InstallShield Response file (e.g. uninstall.iss) to launch your setup.exe with parameters
setup.exe -x -r -f1"%temp%\uninstall.iss"
  or
setup.exe /r /f1"%temp%\uninstall1.iss"
# uninstall using ISS file
setup.exe -x -s -l0x9 -ARP -f1"%temp%\uninstall.iss"



$packageName = '{{PackageName}}'
$packageSearch = "$packageName*"
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Write-Debug "Searching the registry for installed program"
$key = Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                        -ErrorAction:SilentlyContinue `
     | Where-Object   { $_.DisplayName -like $packageSearch }

Write-Debug "Remove quotations from string"
$key.UninstallString -replace "^`"?([^`"]+).*","`$1"
   | ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                                  -FileType "$installerType" `
                                                  -SilentArgs "$silentArgs" `
                                                  -File "$($_.UninstallString)" `
                                                  -ValidExitCodes $validExitCodes }
UninstallString : "C:\Program Files (x86)\stunnel\uninstall.exe" /AllUsers


'"C:\Program Files (x86)\stunnel\uninstall.exe"' -replace  "^`"?([^`"]+).*","`$1"




###  MSI; match name  ###
$packageName = '{{PackageName}}'
$packageSearch = "$packageName*"  # quotes needed if glob
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$validExitCodes = @(0,3010)

Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                         'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                         'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                 -ErrorAction:SilentlyContinue `
| Where-Object   {$_.DisplayName -like $packageSearch} `
| ForEach-Object {Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                              -FileType "$installerType" `
                                              -SilentArgs "$($_.PSChildName) $silentArgs" `
                                              -ValidExitCodes $validExitCodes}


### MSI; match name AND version ###
$packageName = '{{PackageName}}'
$packageSearch = "$packageName*"  # quotes needed if glob
$packageVersion = '{{PackageVersion}}'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$validExitCodes = @(0,3010)

Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                         'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                         'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                 -ErrorAction:SilentlyContinue `
| Where-Object   { $_.DisplayName -like $packageSearch -and $_.DisplayVersion -eq "$packageVersion" } `
| ForEach-Object {Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                              -FileType "$installerType" `
                                              -SilentArgs "$($_.PSChildName) $silentArgs" `
                                              -ValidExitCodes $validExitCodes}

###  EXE; INNO  ###
$packageName = '{{PackageName}}'
$packageSearch = "$packageName*"  # quotes needed if glob
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                         'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                         'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                 -ErrorAction:SilentlyContinue `
| Where-Object   {$_.DisplayName -like $packageSearch} `
| ForEach-Object {Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                              -FileType "$installerType" `
                                              -SilentArgs "$($silentArgs)" `
                                              -File "$($_.UninstallString)" `
                                              -ValidExitCodes $validExitCodes}


###  EXE; NSIS  ###   
$packageName = '{{PackageName}}'
$packageSearch = "$packageName*"  # quotes needed if glob
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                         'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                         'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                 -ErrorAction:SilentlyContinue `
| Where-Object   {$_.DisplayName -like $packageSearch} `
| ForEach-Object {Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                              -FileType "$installerType" `
                                              -SilentArgs "$($silentArgs)" `
                                              -File "$($_.UninstallString)" `
                                              -ValidExitCodes $validExitCodes}


### EXE; install4j ###
$packageName = '{{PackageName}}'
$packageSearch = "$packageName*"  # quotes needed if glob
$installerType = 'exe'
$silentArgs = '-q'
$validExitCodes = @(0)

Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                         'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                         'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                 -ErrorAction:SilentlyContinue `
| Where-Object   {$_.DisplayName -like $packageSearch} `
| ForEach-Object {Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                              -FileType "$installerType" `
                                              -SilentArgs "$($silentArgs)" `
                                              -File "$($_.UninstallString)" `
                                              -ValidExitCodes $validExitCodes}



if ( $true ) { "y" } else { "b" }


### w/ AHK 
# Do you want to remove...
$packageName = '{{PackageName}}'
$packageSearch = "$packageName*"  # quotes needed if glob
$fileType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkFile = Join-Path $scriptPath "chocolateyUninstall.ahk"
$ahkExe = 'AutoHotKey'
$ahkRun = "$Env:Temp\$(Get-Random).ahk"
Copy-Item $ahkFile "$ahkRun" -Force

try {
  Start-Process $ahkExe $ahkRun
  Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                           'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                           'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                   -ErrorAction:SilentlyContinue `
  | Where-Object   {$_.DisplayName -like $packageSearch} `
  | ForEach-Object {Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                                 -FileType "$fileType" `
                                                -SilentArgs "$($silentArgs)" `
                                                -File "$($_.UninstallString)" `
                                                -ValidExitCodes $validExitCodes}
  Remove-Item "$ahkRun" -Force -ErrorAction SilentlyContinue
} catch {
  throw $_.Exception
}
#uninstall.ahk
#NoEnv
SetTitleMatchMode, 1  ;begins
WinWait, EmulationStation Uninstall ahk_class #32770, Do you want to, 120
WinActivate
ControlClick, Button1, ahk_class #32770, &Yes,
ExitApp


### PATH
$packageName = '{{PackageName}}'
$packageSearch = "Pkg Name*"
#▼▼▼▼▼▼▼▼▼▼▼▼▼
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0,3010)
#▲▲▲▲▲▲▲▲▲▲▲▲▲
$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$unPath = Join-Path $toolsPath 'Uninstall-ChocolateyPath.psm1'

Write-Verbose "Querying registry for install key..."
$regKey = Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                  'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                   'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                           -ErrorAction:SilentlyContinue `
          | Where-Object {$_.DisplayName -like $packageSearch}

Write-Verbose "Uninstalling $packageName and removing package..."
$regKey | ForEach-Object {
#▼▼▼▼▼▼▼▼▼▼▼▼▼
  Uninstall-ChocolateyPackage -PackageName "$packageName" `
                              -FileType "$installerType" `
                              -SilentArgs "$($silentArgs)" `
                              -File "$($_.UninstallString)" `
                              -ValidExitCodes $validExitCodes }
#▲▲▲▲▲▲▲▲▲▲▲▲▲

Write-Verbose "Removing from path..."
$binPath = Join-Path $regKey.InstallLocation "bin"
Import-Module $unPath
Uninstall-ChocolateyPath $binPath 'Machine' 





###  Archived; ZIP  ###
# chocolateyUninstall.ps1 probably not necessary

###  Archived; RAR  ###
# chocolateyUninstall.ps1 probably not necessary

###  Uncompressed or unarchived binary  ###
# chocolateyUninstall.ps1 not necessary

###  Compressed executable, extracts to current directory; ZIP  ###
# chocolateyUninstall.ps1 not necessary

###  Compressed executable, extracts to sub-directory; ZIP  ###
# chocolateyUninstall.ps1 not necessary

###  Archived; ZIP  ###
# chocolateyUninstall.ps1 probably not necessary


###  Archived; RAR  ###
# command-line version of 7zip is 7za, provided by 7zip.commmandline, 7za does not support rar
# rar archives require 7z which is provided by 7zip.install
# add to abcprog.nuspec: <dependencies><dependency packagename="7zip.install" /></dependencies>


### MetaPackage ###
# powershell v2 compatibility
$psVer = $PSVersionTable.PSVersion.Major
if ($psver -ge 3) {
  function Get-ChildItemDir {Get-ChildItem -Directory $args}
} else {
  function Get-ChildItemDir {Get-ChildItem $args}
}

# MetaPackage
$warningPreference = "Continue"
$chocoLib = Join-Path $env:ChocolateyInstall "lib"
if (Test-Path -PathType Container (Join-Path $chocoLib '{{PackageName}}.*')) {
  Write-Warning "Uninstall NOT complete."
  Write-Host 
@"
  This package is a metapackage; a chocolatey feature not yet fully implemented.
  To retain future compatibility this package does not uninstall the dependent
  package it points to as designated with *.install or *.portable.`n
"@
  Write-Warning "To finish removing the program installed by package {{PackageName}}, please also run the command:"
  Write-Host " `n`tchoco uninstall " -NoNewLine
  $list = (Get-ChildItemDir $chocoLib\{{PackageName}}.*).Name
  foreach ($i in $list) {
    Write-Host "$i " -NoNewLine
  }
  Write-Host "-y"
}





# Uninstall-ChocolateyPath
$packageName = '{{PackageName}}'
$packageSearch = "monotone *"
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0,3010)
$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$unPath = Join-Path $toolsPath 'Uninstall-ChocolateyPath.psm1'

Write-Verbose "Querying registry for install key..."
$regKey = Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                   'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                   'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                           -ErrorAction:SilentlyContinue `
          | Where-Object {$_.DisplayName -like $packageSearch}

Write-Verbose "Uninstalling $packageName and removing package..."
$regKey | ForEach-Object {
  Uninstall-ChocolateyPackage -PackageName "$packageName" `
                              -FileType "$installerType" `
                              -SilentArgs "$($silentArgs)" `
                              -File "$($_.UninstallString)" `
                              -ValidExitCodes $validExitCodes }

Write-Verbose "Removing from path..."
$binPath = Join-Path $regKey.InstallLocation "bin"
Import-Module $unPath
Uninstall-ChocolateyPath $binPath 'Machine' 






### CHANGES
-like "$packageSearch*"
-like $packageSearch
# move glob into var init
# quotes no longer necessary
# query remains case-insensitive


$packageSearch = "$packageName"
$packageSearch = "$packageName*"  
# add glob from general search definition
# quotes required if glob

`#
abc  # sntho
tnho # t

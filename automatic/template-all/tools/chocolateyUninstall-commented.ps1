# This template is intended to be used with Chocolatey and Ketarin to automatically package and publish nuget-based packages for distribution with chocolatey.
# Please remove comments before pushing.
### sed -ie '/^\s*#.*$/d' -ie 's_\s*#.*$__g' [:alpha:]*/tools/chocolateyInstall.ps1 && unix2dos [:alpha:]*/tools/chocolateyInstall.ps1
# Please maintain compatibility with Posh v2.

###  MSI  ###
$packageName = '{{PackageName}}'
$packageSearch = $packageName  # program's specific $_.DisplayName as returned by Get-ItemProperty
$fileType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$validExitCodes = @(0)
try {
  Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                   -ErrorAction:SilentlyContinue `
  | Where-Object   { $_.DisplayName -like "$packageSearch*" } `
  | ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                                 -FileType "$fileType" `
                                                 -SilentArgs "$($_.PSChildName) $silentArgs" `
                                                 -ValidExitCodes $validExitCodes }
} catch {
  throw $_.Exception
}

###  EXE; INNO  ###
$packageName = '{{PackageName}}'
$packageSearch = $packageName  # program's specific $_.DisplayName as returned by Get-ItemProperty
$fileType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)
try {
  Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                   -ErrorAction:SilentlyContinue `
  | Where-Object   { $_.DisplayName -like "$packageSearch" } `
  | ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                                 -FileType "$fileType" `
                                                 -SilentArgs "$($silentArgs)" `
                                                 -File "$($_.UninstallString)" `
                                                 -ValidExitCodes $validExitCodes }
} catch {
  throw $_.Exception
}

###  EXE; NSIS  ###
$packageName = '{{PackageName}}'
$packageSearch = $packageName  # program's specific $_.DisplayName as returned by Get-ItemProperty
$fileType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
try {
  Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                   -ErrorAction:SilentlyContinue `
  | Where-Object   { $_.DisplayName -like "$packageSearch" } `
  | ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                                 -FileType "$fileType" `
                                                 -SilentArgs "$($silentArgs)" `
                                                 -File "$($_.UninstallString)" `
                                                 -ValidExitCodes $validExitCodes }
} catch {
  throw $_.Exception
}


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


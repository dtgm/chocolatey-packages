# This template is intended to be used with Chocolatey and Ketarin to automatically package and publish nuget-based packages for distribution with chocolatey.
# Please remove comments before pushing.
### sed -ie '/^\s*#.*$/d' -ie 's_\s*#.*$__g' [:alpha:]*/tools/chocolateyInstall.ps1 && unix2dos [:alpha:]*/tools/chocolateyInstall.ps1
# Please maintain compatibility with Posh v2.
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
  | Where-Object   { $_.DisplayName -like "$packageSearch" } `
  | ForEach-Object { Uninstall-ChocolateyPackage -PackageName "$packageName" `
                                                 -FileType "$fileType" `
                                                 -SilentArgs "$($_.PSChildName) $($silentArgs)" `
                                                 -ValidExitCodes $validExitCodes }                                                 }
} catch {
  throw $_.Exception
}
# This template is intended to be used with Chocolatey and Ketarin to automatically package and publish nuget-based packages for distribution with chocolatey.
#
# Please test this package installs, executes, and uninstalls properly before pushing
#
# 1. Make corrections
### Please maintain compatibility with Posh v2
# 2. cd path\to\examplepackage
# 3. choco pack (cpack)
# 4. Install from current directory:
### powershell:  choco install (cinst) examplepackage --source '$pwd' --force --debug --verbose
### cmd.exe:  choco install (cinst) examplepackage -fdv --source '%cd%' --force --debug --verbose
#
# 5. Verify install
### Ensure executables load properly, if not, check for missing dependencies and add to NUSPEC file
### Installed programs should be in $Env:ProgramFiles or ${Env:ProgramFiles(x86)}
### Portable programs that extract to $Env:ChocolateyBinRoot should have been added to $Env:Path
### Portable programs that extract to "$toolsDir" ($Env:ChocolateyInstall\lib\exampleprogram.version\tools) should have had a "shimgen" created in $Env:ChocolateyInstall\bin
#
# 6. Uninstall examplepackage
### choco uninstall (cuninst) examplepackage --debug --verbose
#
# 7. Before pushing, cleanup
# delete all leading blank lines at top of file 
#sed '/./,$!d'
# delete all trailing blank lines at end of file 
#sed -e :a -e '/^\n*$/N;/\n$/ba'
# remove comments
#sed -ie '/^\s*#.*$/d' -ie 's_\s*#.*$__g' [:alpha:]*/tools/chocolateyInstall.ps1 && unix2dos [:alpha:]*/tools/chocolateyInstall.ps1
#
# 8. Pushing package to chocolatey.org
### https://chocolatey.org/account/Register
### https://chocolatey.org/account
### Generate New API Key
### choco apiKey -k xxxxxxxx -source https://chocolatey.org/
### choco push (cpush) examplepackage.1.0.nupkg

# Use code-block below matching installer type, remove all other code-blocks before issuing 'choco pack'

###  MSI  ###
$packageName = '{{PackageName}}'
$installerType = 'msi'
$silentArgs = '/qn /norestart'  # https://msdn.microsoft.com/en-us/library/aa372024(v=vs.85).aspx
$url = '{{DownloadUrl}}'  # if url is being passed as an array, omit quotes
$checksum = '{{Checksum}}'
$checksumType = 'sha1'  # md5 or sha1
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'  # md5 or sha1
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"


###  EXE; INNO  ###
$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'  # http://unattended.sourceforge.net/InnoSetup_Switches_ExitCodes.html
$url = '{{DownloadUrl}}'  # if url is being passed as an array, omit quotes
$checksum = '{{Checksum}}'
$checksumType = 'sha1'  # md5 or sha1
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'  # md5 or sha1
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `


###  EXE; NSIS  ###
$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/S'  # http://nsis.sourceforge.net/Docs/Chapter3.html#
$url = '{{DownloadUrl}}'  # if url is being passed as an array, omit quotes
$checksum = '{{Checksum}}'
$checksumType = 'sha1'  # md5 or sha1
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'  # md5 or sha1
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"


###  Uncompressed or unarchived binary  ###
# Not typical; in almost all cases bandwidth is more expensive than processing so portable executable binaries are typically compressed before distribution
# Typically, only extremely lean programs coded in a low-level language where the benefits of optimization would be negligible should be distributing uncompressed executables.
$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"
try {
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$installFile" `
                        -Url "$url" `
                        -Url64bit "$url64" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType" `
                        -Checksum64 "$checksum64" `
                        -ChecksumType64 "$checksumType64"
  Set-Content -Path ("$installFile.gui") -Value $null  # create an empty metadata file for closed-source "shimgen"; prevents blank back window
} catch {
  throw $_.Exception
}


###  Compressed executable, extracts to current directory; ZIP  ###
$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"
Set-Content -Path ("$installFile.gui") -Value $null



###  Compressed executable, extracts to sub-directory; ZIP  ###




###  Archived; ZIP  ###
$packageName = '{{PackageName}}'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"


###  Archived; RAR  ###
# command-line version of 7zip is 7za, provided by 7zip.commmandline, 7za does not support rar
# rar archives require 7z which is provided by 7zip.install
# add to abcprog.nuspec: <dependencies><dependency packagename="7zip.install" /></dependencies>




### sourceforge.net hack to overcome repositories that auto-forward to download URL
# in ketarin, create textual variable "url64" and set @('{getUrl}', '{getUrl64}')
$urlArray = {{DownloadUrlx64}}  # note there are no quotes around DownloadUrlx64 placeholder
$url = $urlArray[0]
$url64 = $urlArray[1]


### 

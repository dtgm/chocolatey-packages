# https://github.com/chocolatey/choco/blob/master/src/chocolatey.resources/helpers/functions/Install-ChocolateyPackage.ps1


###  MSI  ###
$packageName = '{{PackageName}}'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

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

$packageName = '{{PackageName}}'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"


###  EXE; INNO  ###
$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha256'
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

$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"

###  EXE; NSIS  ###
$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/S'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha256'
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

$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/S'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"


### EXE; install4j ###
# http://www.ej-technologies.com/products/install4j/overview.html
# http://resources.ej-technologies.com/install4j/help/doc/help.pdf 
#   page 58: A.2.1 Installer Modes: 
#     -g  GUI mode
#     -c  Console mode
#     -q  Unattended mode
#   page 60: A.2.2 Command Line Options For Generated Installers
# Unattended mode:
# * In all cases, where the installer would have asked the user whether to overwrite an existing file, the installer will not overwrite it. You can change this behavior by passing -overwrite as a parameter to the installer.
# * The installer will install the application to the default installation directory, unless you pass the '-dir' parameter to the installer. The parameter after '-dir' must be the desired installation directory. Example: installer.exe -q -dir "d:\myapps\My Application"
# * p.64: response files are an important instrument to pre-define user input
# * -console parameter after the -q parameter, a console will be allocated the displays the output to the user. This is useful for debugging purposes
# * progress mode (no user input, progress status): -q -splash [title]

$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '-q'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha256'
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










### autohotkey
Write-Verbose "Starting AutoHotKey for assistance in silent and/or automated install"
Write-Verbose "Actively using the computer while AutoHotKey is running may interfere with automation"
$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = Join-Path $scriptPath "chocolateyInstall.ahk"
$ahkExe = 'AutoHotKey'
Start-Process $ahkExe $ahkFile
       










# https://github.com/chocolatey/choco/blob/master/src/chocolatey.resources/helpers/functions/Get-ChocolateyWebFile.ps1

###  Uncompressed or unarchived binary  ###
# Not typical; in almost all cases bandwidth is more expensive than processing so portable executable binaries are typically compressed before distribution
# Typically, only extremely lean programs coded in a low-level language where the benefits of compression would be negligible should be distributed as uncompressed executables.
$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha256'
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition
$installFile = Join-Path $toolsDir "$($packageName).exe"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Url64bit "$url64" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType" `
                      -Checksum64 "$checksum64" `
                      -ChecksumType64 "$checksumType64"

# create an empty sidecar metadata file for closed-source shimgen.exe to designate gui
Set-Content -Path ("$installFile.gui") `
            -Value $null

# single, uncompressed executable
# shimgen will be generated automatically and added to $env:ChocolateyInstall\bin
$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition
$installFile = Join-Path $toolsDir "$($packageName).exe"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"


# https://github.com/chocolatey/choco/blob/master/src/chocolatey.resources/helpers/functions/Install-ChocolateyZipPackage.ps1

###  Compressed executable, extracts to current directory; ZIP  ###
$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha256'
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null

# no separate version for 64-bit
$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = "$checksumType"
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null

###  sf.net  ###
$packageName = '{{PackageName}}'
$urlArray = {{DownloadUrlx64}}
$url = $urlArray[0]
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha256'
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null



###  Compressed executable, extracts to sub-directory; ZIP  ###

###  Archived; ZIP  ###
$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha256'
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"
                             
###  Archived; ZIP  ###
$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$url64 = $url
$checksum64 = $checksum
$checksumType64 = $checksumType
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"


$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null

            
            
            
$ErrorActionPreference = 'Stop'; # stop on all errors
$packageName = '{{PackageName}}'
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition
$url = '{{DownloadUrl}}'
 
$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
}
 
Install-ChocolateyZipPackage @packageArgs            
            
            
            
            
###  Archived; RAR  ###
# command-line version of 7zip is 7za, provided by 7zip.commmandline, 7za does not support rar
# rar archives require 7z which is provided by 7zip.install
# add to abcprog.nuspec: <dependencies><dependency packagename="7zip.install" /></dependencies>




### sourceforge.net hack to overcome repositories that auto-forward to download URL
# in ketarin, create textual variable "url64" and set @('{getUrl}', '{getUrl64}')
# note there are no quotes around DownloadUrlx64 placeholder
$urlArray = {{DownloadUrlx64}}
$url = $urlArray[0]
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha256'
### JAR; izpack
java -jar installer.jar auto-install.xml
http://docs.codehaus.org/display/IZPACK/Unattended+Installations

# MetaPackage







### ZIP -> EXE ###
$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/S /v/qn'
$url = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$validExitCodes = @(0)

$chocoTempDir = Join-Path $Env:Temp "chocolatey"
$pkgTempDir = Join-Path $chocoTempDir "$packageName"
if (![System.IO.Directory]::Exists($pkgTempDir)) {[System.IO.Directory]::CreateDirectory($pkgTempDir)}
$zipFile = Join-Path $pkgTempDir "$($packageName)Install.zip"
$installFile = Join-Path $pkgTempDir 'setup.exe'

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$zipFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"
Get-ChocolateyUnzip -FileFullPath "$zipFile" `
                    -Destination "$pkgTempDir" `
                    -SpecificFolder "" `
                    -PackageName "$packageName"
Install-ChocolateyInstallPackage -PackageName "$packageName" `
                                 -FileType "$installerType" `
                                 -SilentArgs "$silentArgs" `
                                 -File "$installFile" `
                                 -ValidExitCodes $validExitCodes




### Archived installer; ZIP ###
$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$chocoTempDir = Join-Path $env:Temp 'chocolatey'
$pkgTempDir = Join-Path $chocoTempDir $packageName

# download and extract to $pkgTempDir
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$pkgTempDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

$silentArgs = '/S'
$installerType = 'exe'
$installFile = Join-Path $pkgTempDir "BitMeterOSInstaller.exe"

# run extracted installer
Install-ChocolateyInstallPackage -PackageName "$packageName" `
                                 -FileType "$installerType" `
                                 -SilentArgs "$silentArgs" `
                                 -File "$installFile" `
                                 -ValidExitCodes $validExitCodes



$ cat datacrow/tools/chocolateyInstall.ps1
$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/S'
$url = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$validExitCodes = @(0)
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition

$install32File = "$toolsDir\setup32bit.exe"
$install32Opts = "$toolsDir\setup32bit.xml"
$install64File = "$toolsDir\setup64bit.exe"
$install64Opts = "$toolsDir\setup64bit.xml"
$chocoTempDir = Join-Path $Env:Temp "chocolatey"
$tempDir = Join-Path $chocoTempDir "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
$zipFile = Join-Path $tempDir "$($packageName)_4_0_15_installer.zip"

try {
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$zipFile" `
                        -Url "$url" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType"
  Get-ChocolateyUnzip -FileFullPath "$zipFile" `
                      -Destination "$toolsDir" `
                      -SpecificFolder "" `
                      -PackageName "$packageName"
  if (Get-ProcessorBits 64) {
    Start-ChocolateyProcessAsAdmin -Statements "/c `"$install64File`" $install64Opts" `
                                   -ExeToRun "cmd.exe"
  } else {
    Start-ChocolateyProcessAsAdmin -Statements "/c `"$install32File`" $install32Opts" `
                                   -ExeToRun "cmd.exe"
  }
} catch {
  throw $_.Exception
}





# Install-ChocolateyPath
Write-Verbose "Querying registry for install location..."
$packageSearch = "monotone *"
$regKey = Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                   'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                   'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                           -ErrorAction:SilentlyContinue `
          | Where-Object {$_.DisplayName -like $packageSearch}

$binPath = Join-Path $regKey.InstallLocation "bin"
if ($binPath) {
  Write-Verbose "Adding `"$binPath`" to path environment variable..."
  Install-ChocolateyPath $binPath 'Machine'
}

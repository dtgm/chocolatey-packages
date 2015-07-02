#NOTE: Please remove any commented lines to tidy up prior to releasing the package, including this one

$packageName = 'TotalCommander' # arbitrary name for the package, used in messages
$installerType = 'EXE' #only one of these two: exe or msi
$url = 'https://github.com/calwell/nugetpackages/raw/master/TotalCommander/tcm801x32_64.exe' # download url
$url64 = $url # 64bit URL here or just use the same as $url
$silentArgs = '' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer #msi is always /quiet
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes





# generated vars
$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'

# static vars
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -Url64bit "" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
$installFile = Join-Path -Path $toolsDir `
                         -ChildPath "tc-{{PackageVersion}}" `
               | Join-Path -ChildPath "tc.exe.gui"
Set-Content -Path $installFile `
            -Value $null
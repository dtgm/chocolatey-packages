# powershell v2 compatibility
$psVer = $PSVersionTable.PSVersion.Major
if ($psver -ge 3) {
  function Get-ChildItemDir {Get-ChildItem -Directory $args}
} else {
  function Get-ChildItemDir {Get-ChildItem $args}
}
$packageName = '{{PackageName}}'
$version = '{{PackageVersion}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'

$fileName = "mongodb-win32-i386-$version"
if (Get-ProcessorBits 64) {$fileName = "mongodb-win32-x86`_64-$version"}
$url = "http://downloads.mongodb.org/win32/$fileName.zip"

$binRoot = Get-BinRoot
$mongoPath = Join-Path $binRoot $packageName
$mongoBin = Join-Path $mongoPath 'bin'




$mongoDaemon = Join-Path $mongoBin 'mongod.exe'
if (Test-Path $mongoDaemon){
  Start-ChocolateyProcessAsAdmin "& $mongod --remove"
  Remove-Item $mongoPath -Recurse -Force
}

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$binRoot" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"
                             
if ((Get-ChildItem $installDir).Count -eq 1 ) {
  Move-Item -Path (Join-Path (Get-ChildItem $installDir).FullName "\`*") -Destination "$installDir"
}
$unzipFile = 'mongodb-win32-*-{{PackageVersion}}'
$unzipPath = (Get-ChildItemDir (Join-Path $binRoot $unzipFile)).FullName
Rename-Item -Path  $unzipPath `
            -NewName $packageName `
            -Force

Install-ChocolateyPath "$installDir" 'User'

move-item $(Join-Path $binRoot $fileName) $mongoPath -force

$dataDir = Join-Path $mongoPath 'data'
if (!$(Test-Path $dataDir)) {mkdir $dataDir}
$logsDir = Join-Path $mongoPath 'logs'
if (!$(Test-Path $logsDir)){mkdir $logsDir}
if (!$(Test-Path $tempDir)){mkdir $tempDir}
New-Item -Path $tempDir -Force -ItemType Directory | Out-Null

# create batch files
$chocoBinPath = Join-Path $env:ChocolateyInstall 'bin'
$exeFile = Join-Path $mongoPath 'bin\mongo.exe'
$batchFile = Join-Path $chocoBinPath 'mongo.bat'
"@echo off
$exeFile %*" | Out-File $batchFile -encoding ASCII
$batchFile = Join-Path $chocoBinPath 'mongoRotateLogs.bat'
"@echo off
$exeFile --eval `'db.runCommand(`"logRotate`")`' mongohost:27017/admin" | Out-File $batchFile -encoding ASCII

# install and start mongodb as a Windows service
$installArgs = '& $mongoDaemon --quiet --bind_ip 127.0.0.1 --logpath $(Join-Path $logsDir 'MongoDB.log') --logappend --dbpath $dataDir --directoryperdb --install; net start `"MongoDB`"'
Start-ChocolateyProcessAsAdmin -Statements "$installArgs"

$installFile = Join-Path -Path $toolsDir `
                         -ChildPath "$packageName" |
               Join-Path -ChildPath "$($packageName).exe.gui"

               Start-ChocolateyProcessAsAdmin -Statements "$installArgs" `
                             -ExeToRun "cmd.exe" `
                             -ValidExitCodes $validExitCodes

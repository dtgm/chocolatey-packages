# powershell v2 compatibility
$psVer = $PSVersionTable.PSVersion.Major
if ($psver -ge 3) {
  function Get-ChildItemDir {Get-ChildItem -Directory $args}
} else {
  function Get-ChildItemDir {Get-ChildItem $args}
}
$packageName = 'mongodb'
$version = '3.2.4'
$url = 'http://downloads.mongodb.org/win32/mongodb-win32-i386-3.2.4.zip'
$checksum = '2a2735cb60242f3f5bad8d1396252bc6d27cb55f'
$checksumType = 'sha1'
$url64 = 'http://downloads.mongodb.org/win32/mongodb-win32-x86_64-3.2.3.zip'
$checksum64 = '6d1d648eea9b1876fa5481fc6be600a20842bcba'
$checksumType64 = 'sha1'

$fileName = "mongodb-win32-i386-$version"
if (Get-ProcessorBits 64) {$fileName = "mongodb-win32-x86`_64-$version"}
$url = "http://downloads.mongodb.org/win32/$fileName.zip"

#
# Parse command line arguments: choco install mongodb -packageParameters "/installDir:'D:\MongoDB'"
#
function Parse-Parameters($arguments)
{
    $packageParameters = $env:chocolateyPackageParameters
    Write-Host "Package parameters: $packageParameters"

    if ($packageParameters)
    {
          $match_pattern = "(?:\s*)(?<=[-|/])(?<name>\w*)[:|=]('((?<value>.*?)(?<!\\)')|(?<value>[\w]*))"

          if ($packageParameters -match $match_pattern )
          {
              $results = $packageParameters | Select-String $match_pattern -AllMatches
              $results.matches | % {

                $key = $_.Groups["name"].Value.Trim();
                $value = $_.Groups["value"].Value.Trim();

                write-host "$key : $value";

                if ($arguments.ContainsKey($key))
                {
                    $arguments[$key] = $value;
                }
            }
          }
    }
}

$binRoot = Get-BinRoot
$arguments = @{}
$arguments["installDir"] = ""
Parse-Parameters $arguments

if ($arguments["installDir"])
{
    $binRoot = $arguments["installDir"]
}

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
$unzipFile = 'mongodb-win32-*-3.2.4'
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

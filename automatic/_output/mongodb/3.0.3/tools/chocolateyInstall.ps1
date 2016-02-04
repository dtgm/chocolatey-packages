$packageName = 'MongoDB'
$mongoVersion = '3.0.3'
$is64bit = (Get-WmiObject Win32_Processor).AddressWidth -eq 64
$fileName = "mongodb-win32-i386-$mongoVersion"
if ($is64bit) {$fileName = "mongodb-win32-x86`_64-$mongoVersion"}
$url = "http://downloads.mongodb.org/win32/$fileName.zip"

# Parse command line arguments: choco install mongodb -packageParameters "/installDir:'D:\MongoDB'"
$arguments = @{}
$arguments["installDir"] = "";
Parse-Parameters($arguments);

if ($arguments["installDir"])
{
    $binRoot = $arguments["installDir"]
}
else {
    $binRoot = "$env:systemdrive\"  

    ### Using an environment variable to to define the bin root until we implement YAML configuration ###
    if($env:chocolatey_bin_root -ne $null)
    {
        $binRoot = join-path $env:systemdrive $env:chocolatey_bin_root
    }  
}

$mongoDir = $(join-path $binRoot $packageName)
$mongod = join-path $mongoDir 'bin\mongod.exe'
 
if(test-path $mongod){
  Start-ChocolateyProcessAsAdmin "& $mongod --remove"
  remove-item $mongoDir -recurse -force
}
 
Install-ChocolateyZipPackage $packageName $url $binRoot
 
move-item $(join-path $binRoot $fileName) $mongoDir -force
 
$dataDir = $(join-path $mongoDir 'data')
if(!$(test-path $dataDir)){mkdir $dataDir}
 
$logsDir = $(join-path $mongoDir 'logs')
if(!$(test-path $logsDir)){mkdir $logsDir}
 
$binDir = join-path $env:chocolateyinstall 'bin'
$batchFileName = Join-Path $binDir 'mongo.bat'
$executable = join-path $mongoDir 'bin\mongo.exe'
"@echo off
$executable %*" | Out-File $batchFileName -encoding ASCII
 
$batchFileName = Join-Path $binDir 'MongoRotateLogs.bat'
"@echo off
$executable --eval `'db.runCommand(`"logRotate`")`' mongohost:27017/admin" | Out-File $batchFileName -encoding ASCII
 
# Install and start mongodb as a Windows service
Start-ChocolateyProcessAsAdmin "& $mongod --quiet --bind_ip 127.0.0.1 --logpath $(join-path $logsDir 'MongoDB.log') --logappend --dbpath $dataDir --directoryperdb --install; net start `"MongoDB`""

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

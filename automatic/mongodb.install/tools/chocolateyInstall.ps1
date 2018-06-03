$packageName = '{{PackageName}}'
$installerType = 'msi'
# Compass causes a 1603 error when running the 3.6.0 MSI
$silentArgs = '/quiet /qn /norestart SHOULD_INSTALL_COMPASS="0"'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$validExitCodes = @(0,3010)

# Allow the user to specify the data and log path, falling back to sensible defaults
$pp = Get-PackageParameters
if(!$pp['dataPath']) { 
    $pp['dataPath'] = "$env:PROGRAMDATA\MongoDB\data\db"
}
if(!$pp['logPath']) { 
    $pp['logPath'] = "$env:PROGRAMDATA\MongoDB\log"
}

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"

# 
New-Item -ItemType Directory $pp['dataPath'] -ErrorAction SilentlyContinue
New-Item -ItemType Directory $pp['logPath'] -ErrorAction SilentlyContinue

$Path = "$env:ProgramFiles\MongoDB\Server"
$version = Get-ChildItem $Path | Sort-Object -Descending | Select-Object -First 1
$configFilePath = "$Path\$version\mongod.cfg"

# don't overwrite the config file if it already exists
if (!(Test-Path $configFilePath))
{
    # put the parameters into vars so I can insert them into $configFile herestring
    $dataPath = $pp['dataPath']
    $logPath = $pp['logPath']
    
    $configFile = @"
    systemLog:
        destination: file
        path: $logPath\mongod.log
    storage:
        dbPath: $dataPath
"@

    Add-Content -Path $configFilePath -Value $configFile
}    

# register MongoDB server as a Windows Service
& "$Path\$version\bin\mongod.exe" --config "$Path\$version\mongod.cfg" --install
# start the service
Start-Service -Name MongoDB
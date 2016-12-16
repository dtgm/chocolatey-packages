$packageName = 'bitvise-ssh-server'
$installerType = 'exe'
$url = 'https://bvdl.s3-eu-west-1.amazonaws.com/BvSshServer-Inst.exe'
$checksum = '3eeda8210a98e61b95ceb200a435fccd'
$checkType = 'md5'
$silentArgs = ''
$validExitCodes = @(0..63)

$arguments = @{};
$packageParameters = $env:chocolateyPackageParameters;

# Default values
#$installDir = "directory"
$defaultSite = $true
#$site = "name"
$force = $false
$acceptEULA = $true
$interactive = $false
$noRollback = $false
#$renameExistingDir = "existingDir"
#$activationCode = "hex-code"
#$keypairs = "file"
#$settings = "file"
#$siteTypeSettings = "file"
$startService = $false
$startBssCtrl = $false

# parse packageParameters with regular expressions
if ($packageParameters) {
    $match_pattern = "-(?<option>([a-zA-Z]+))=(?<value>([`"'])?([a-zA-Z0-9- _\\:\.]+)([`"'])?)|\-(?<option>([a-zA-Z]+))"
    $option_name = 'option'
    $value_name = 'value'

    if ( $packageParameters -match $match_pattern ) {
      $results = $packageParameters | Select-String $match_pattern -AllMatches
      $results.matches | ForEach-Object {
        $arguments.Add(
          $_.Groups[$option_name].Value.Trim(),
          $_.Groups[$value_name].Value.Trim())
      }
    } else {
      throw "Package Parameters were found but were invalid (REGEX Failure)"
    }
    
    # install location
    if ( $arguments.ContainsKey("installDir") ) {
      Write-Host "installDir Argument Found"
      $installDir = $arguments["installDir"]
      $silentArgs += " -installDir=" + $installDir
      $defaultSite = $false
    } elseif ( $arguments.ContainsKey("site") ) {
      Write-Host "site Argument Found"
      $siteName = $arguments["site"]
      $silentArgs += " -site=" + $siteName
      $defaultSite = $false
    }
    
    # rename install location
    if ( $arguments.ContainsKey("renameExistingDir") ) {
      Write-Host "renameExistingDir Argument Found"
      $renameExistingDir = $arguments["renameExistingDir"]
      $silentArgs += " -renameExistingDir=" + $renameExistingDir
    }

    if ( $arguments.ContainsKey("force") ) {
      Write-Host "force Argument Found"
      $force = $true
    }
    
    if ( $arguments.ContainsKey("interactive") ) {
      Write-Host "interactive Argument Found"
      $interactive = $true
    }
    
    if ( $arguments.ContainsKey("noRollback") ) {
      Write-Host "noRollback Argument Found"
      $noRollback = $true
    }
    
    if ( $arguments.ContainsKey("renameExistingDir") ) {
      Write-Host "renameExistingDir Argument Found"
      $renameExistingDir = $arguments["renameExistingDir"]
      $silentArgs += " -renameExistingDir=" + $renameExistingDir
    }
    
    if ( $arguments.ContainsKey("activationCode") ) {
      Write-Host "activationCode Argument Found"
      $activationCode = $arguments["activationCode"]
      $silentArgs += " -activationCode=" + $activationCode
    }
    
    if ( $arguments.ContainsKey("keypairs") ) {
      Write-Host "keypairs Argument Found"
      $keypairFile = $arguments["keypairs"]
      $silentArgs += " -keypairs=" + $keypairFile
    }
    
    if ( $arguments.ContainsKey("settings") ) {
      Write-Host "settings Argument Found"
      $settingsFile = $arguments["settings"]
      $silentArgs += " -settings=" + $settingsFile
    }
    
    if ( $arguments.ContainsKey("siteTypeSettings") ) {
      Write-Host "siteTypeSettings Argument Found"
      $siteTypeSettings = $arguments["siteTypeSettings"]
      $silentArgs += " -siteTypeSettings=" + $siteTypeSettings
    }
    
    if ( $arguments.ContainsKey("startService") ) {
      Write-Host "startService Argument Found"
      $startService = $true
    }
    
    if ( $arguments.ContainsKey("startBssCtrl") ) {
      Write-Host "startBssCtrl Argument Found"
      $startBssCtrl = $true
    }
} else {
    Write-Debug "No Package Parameters used"
}

if ($force) { $silentArgs += " -force" }
if ($interactive) { $silentArgs += " -interactive" }
if ($noRollback) { $silentArgs += " -noRollback" }
if ($acceptEULA) { $silentArgs += " -acceptEULA" }
if ($defaultSite) { $silentArgs += " -defaultSite" }
if ($startService) { $silentArgs += " -startService" }
if ($startBssCtrl) { $silentArgs += " -startBssCtrl" }

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
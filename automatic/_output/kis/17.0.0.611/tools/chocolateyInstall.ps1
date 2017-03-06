$packageName = 'kis'
$installerType = 'exe'
$silentArgs = "/s /noreboot"
$url = 'http://products.kaspersky-labs.com/english/homeuser/kis2017/kis17.0.0.611en_10780.exe'
$checksum = '5310d9a10113054503fd47b9e56a2dc1a620359b18b4dd08610e05c47c9c3395'
$checksumType = 'sha256'
$validExitCodes = @(0,3010)

$tempDir = Join-Path $env:Temp "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
$instLog = Join-Path $tempDir kis-$(Get-Date -Format yyyyMMddHHmm)
$instLog = $instLog + '.log'

$arguments = @{}
$packageParameters = $env:chocolateyPackageParameters

$advParamNotes = @"
Command line installation parameters:

/a  
  denotes administrative installation when installation files are copied to a specified network folder
  Example: KIS16.0.0.463.en-US.exe /a"Z:\Kaspersky Lab"
/sendstat
  enables sending statistical reports in the silent mode when the parameter /pAGREETOEULA=1 is used.
/recommended
  blocks displaying recommendations on additional application installation'
/noreboot
  blocks the dialog that requires that the computer should be restarted after the installation has been successfully completed.
/t
  defines the path to the file with the installation log.
/g
  allows setting the log tracing level for the insrtallation process (possible values: 1, 2, or 3, where 1 is the minimum value).
/l
  defines the language used while the multi-language version is being installed. NOT CURRENTLY USED
"@
Write-Verbose $advParamNotes

# Default the values
$admin = $true
$sendStat = $true
$recommended = $true
$installLog = $instLog
$installLogLevel = "1"
#$langCode = $false

$paramPropNotes = @"
Command line installation parameter properties:

ACTIVATIONCODE=<value>
  is meant for applying an activation code. Type the activation code instead of <value>.
  http://support.kaspersky.com/us/12065#block1
AGREETOEULA
  indicates the user's consent to the License Agreement.
JOINKSN
  indicates the user's consent to participate in Kaspersky Security Network.
INSTALLDIR=<value>
  is used for specifying the installation folder.
  Example: KIS16.0.0.463.en-US.exe /pINSTALLDIR="C:\Custom Folder\kis2016"
KLPASSWD=<value>
  is meant to protect some functions of the product with a password.
  Example: KIS16.0.0.463.en-US.exe /pKLPASSWD=12345678
  If the value of the parameter KLPASSWDAREA is not set, it will be applied to the default scope:
      Making changes to the application settings
      Closing the application
KLPASSWDAREA=[SET|EXIT|UNINST]
  defines the scope of the password specified by the option KLPASSWD. The possible values are:
    * SET  making changes to the application settings.
    * EXIT  closing the application.
    * UNINST  removing the application.
  The option may have multiple values; in such case, the values are divided by a semicolon.
SELFPROTECTION=1
  enables the product's Self-Defense during the installation.
  Example: KIS16.0.0.463.en-US.exe /pSELFPROTECTION=1
ALLOWREBOOT=1
  allows restarting the system if it is necessary.
  Example: KIS16.0.0.463.en-US.exe /pALLOWREBOOT=1
SKIPPRODUCTCHECK=1
  skips checking for applications incompatible with Kaspersky Internet Security 2016.
  Example: KIS16.0.0.463.en-US.exe /pSKIPPRODUCTCHECK=1
  
Reference: http://support.kaspersky.com/us/12002#block2
"@
Write-Verbose $paramPropNotes

# not set by default; requires additional data passed with package parameter
$activationCode = 0
$installDir = 0
$klPasswd = 0
$klPasswdArea = 0
# default: enabled/yes
$agreeToEula = "1"
$joinKsn = "1"
$selfProtection = "1"
$skipProductCheck = "1"
# default: disabled/no
$allowReboot = "0"

if ($packageParameters) {
  $match_pattern = "\/(?<option>([a-zA-Z]+))=(?<value>([`"'])?([a-zA-Z0-9- _\\:\.]+)([`"'])?)|\/(?<option>([a-zA-Z]+))"
  $option_name = 'option'
  $value_name = 'value'

  if ($packageParameters -match $match_pattern ){
    $results = $packageParameters | Select-String $match_pattern -AllMatches
    $results.matches | % {
      $arguments.Add(
        $_.Groups[$option_name].Value.Trim(),
        $_.Groups[$value_name].Value.Trim()
      )
    }
  } else {
    Throw "Package Parameters were found but were invalid (REGEX Failure)"
  }

  Write-Debug "Parameters requiring multiple character string"
  if ($arguments.ContainsKey("installLog")) {
    Write-Host "installLog Found"
    $installLog = $arguments["installLog"]
  }
  if ($arguments.ContainsKey("installLogLevel")) {
    Write-Host "installLogLevel Found"
    $installLogLevel = $arguments["installLogLevel"]
  }
  if ($arguments.ContainsKey("activationCode")) {
    Write-Host "activationCode Found"
    $activationCode = $arguments["activationCode"]
    $silentArgs += " /pACTIVATIONCODE=" + $activationCode
  }
  if ($arguments.ContainsKey("installDir")) {
    Write-Host "installDir Found"
    $installDir = $arguments["installDir"]
    $silentArgs += " /pINSTALLDIR=" + $installDir
  }
  if ($arguments.ContainsKey("klPasswd")) {
    Write-Host "klPasswd Found"
    $klPasswd = $arguments["klPasswd"]
    $silentArgs += " /pKLPASSWD=" + $klPasswd
  }
  if ($arguments.ContainsKey("klPasswdArea")) {
    Write-Host "klPasswdArea Found"
    $klPasswdArea = $arguments["klPasswdArea"]
    $silentArgs += " /pKLPASSWDAREA=" + $klPasswdArea
  }
  
  Write-Debug "Parameters requiring single character 0 to disable"
  if ($arguments.ContainsKey("sendStat")) {
    Write-Host "sendStat Found"
    $sendStat = $arguments["sendStat"]
  }
  if ($arguments.ContainsKey("recommended")) {
    Write-Host "recommended Found"
    $recommended = $arguments["recommended"]
  }
  if ($arguments.ContainsKey("agreeToEula")) {
    Write-Host "agreeToEula Found"
    $agreeToEula = $arguments["agreeToEula"]
  }
  if ($arguments.ContainsKey("joinKsn")) {
    Write-Host "joinKsn Found"
    $joinKsn = $arguments["joinKsn"]
  }
  if ($arguments.ContainsKey("selfProtection")) {
    Write-Host "selfProtection Found"
    $selfProtection = $arguments["selfProtection"]
  }
  if ($arguments.ContainsKey("skipProductCheck")) {
    Write-Host "skipProductCheck Found"
    $skipProductCheck = $arguments["skipProductCheck"]
  }
  if ($arguments.ContainsKey("allowReboot")) {
    Write-Host "allowReboot Found"
    $allowReboot = $arguments["allowReboot"]
  }
} else {
    Write-Debug "No package parameters passed in"
}
  
#if ($admin) { $silentArgs += " /admin" }
if ($sendStat -eq "1") { $silentArgs += " /sendstat" }
if ($recommended -eq "1") { $silentArgs += " /recommended" }
$silentArgs += " /t" + $installLog
$silentArgs += " /g" + $installLogLevel
$silentArgs += " /pAGREETOEULA=" + $agreeToEula
$silentArgs += " /pJOINKSN=" + $joinKsn
$silentArgs += " /pSELFPROTECTION=" + $selfProtection
$silentArgs += " /pSKIPPRODUCTCHECK=" + $skipProductCheck
$silentArgs += " /pALLOWREBOOT=" + $allowReboot
Write-Debug "This would be the Chocolatey Silent Arguments: $silentArgs"

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -ValidExitCodes $validExitCodes
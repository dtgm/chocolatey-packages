$packageName = '{{PackageName}}'
$url32       ='{{DownloadUrl}}'
$checkSum32  = '{{Checksum}}'
$url64       ='{{DownloadUrlx64}}'
$checkSum64  = '{{Checksumx64}}'

$DownloadArgs = @{
   PackageName         = $packageName
   FileFullPath        = "$env:TEMP\$packageName\Download.zip"
   Url                 = $url32
   Url64bit            = $url64
   Checksum            = $checkSum32
   Checksum64          = $checkSum64
   ChecksumType        = 'sha256'
   GetOriginalFilename = $true
}

# Download zip
$ZipPath = Get-ChocolateyWebFile @DownloadArgs
 
# Extract zip
Get-ChocolateyUnzip $ZipPath (Split-Path $ZipPath)

$UserArguments = @{}

# Parse the packageParameters using good old regular expression
if ($env:chocolateyPackageParameters) {
   $match_pattern = "\/(?<option>([a-zA-Z]+)):(?<value>([`"'])?([a-zA-Z0-9- _\\:\.]+)([`"'])?)|\/(?<option>([a-zA-Z]+))"
   $option_name = 'option'
   $value_name = 'value'
 
   if ($env:chocolateyPackageParameters -match $match_pattern ){
      $results = $env:chocolateyPackageParameters | Select-String $match_pattern -AllMatches
      $results.matches | % {
         $UserArguments.Add(
            $_.Groups[$option_name].Value.Trim(),
            $_.Groups[$value_name].Value.Trim()
         )
      }
      if ($UserArguments.ContainsKey('NoSubs')) {
         Write-Host 'You want FastMenu options directly in context menus (not in submenus).'
         $NoSubs = 'NoSubs'
      }
   } else { Throw 'Package Parameters were found but were invalid (REGEX Failure)' }
} else { Write-Debug 'No Package Parameters Passed in' }

# Win7 complains the installer didn't run correctly.  This will prevent that.
Set-Variable __COMPAT_LAYER=!Vista

& AutoHotKey $(Join-Path $env:ChocolateyPackageFolder 'tools\chocolateyInstall.ahk') $(Join-Path (Split-Path $ZipPath) 'setup.exe') $NoSubs



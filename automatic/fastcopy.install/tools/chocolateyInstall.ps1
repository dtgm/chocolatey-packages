$packageName = 'fastcopy.install'

$url='http://ftp.vector.co.jp/66/88/2323/FastCopy313.zip'

If (Get-ProcessorBits -eq '64') {
   $url='http://ftp.vector.co.jp/66/88/2323/FastCopy313_x64.zip'
}

$WorkingDir = Join-Path $env:TEMP $packageName
$ZipPath = Join-Path $WorkingDir $url.split('/')[-1]

# Download zip
Get-ChocolateyWebFile $packageName $ZipPath $url
 
# Extract zip
Get-ChocolateyUnzip $ZipPath $WorkingDir

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


$ScriptDir = Split-Path -parent $MyInvocation.MyCommand.Definition

# Win7 complains the installer didn't run correctly.  This will prevent that.
Set-Variable __COMPAT_LAYER=!Vista

& AutoHotKey $(Join-Path $ScriptDir 'chocolateyInstall.ahk') $(Join-Path (Split-Path $ZipPath) 'setup.exe') $NoSubs



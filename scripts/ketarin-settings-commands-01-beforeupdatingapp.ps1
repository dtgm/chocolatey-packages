# Script version: 1.1.0.0
#
# Changelog
#   add comments
#   use line continuations
#
# Requires:
#  chocolateypackageupdater
#  >=ketarin-1.8.5

# Package variables to be checked for content
$vars = "version","url","url64","checksum","checksumx64","nopush"
$hash = @{}

# Build hash using $vars for $hash.keys and corresponding content, if any, to $hash.values
foreach ($var in $vars) {
  if ($app.variables.ContainsKey($var)) {
    $hash[$var] = $app.variables.item($var).cachedcontent
  } else {
    $hash[$var] = "{$var}"
  }
  Write-Host "`$hash[$var] is: $($hash[$var])"
}

Write-Host @"
Running: 
chocopkgup $($hash["nopush"]) ``
           --packagename=$app ``
           --version=`"$($hash["version"])`" ``
           --url=`"$($hash["url"])`" ``
           --urlx64=`"$($hash["url64"])`" ``
           --checksum=`"$($hash["checksum"])`" ``
           --c64=`"$($hash["checksumx64"])`" ``
           --debug
"@

# Using corresponding hash values of keys from $vars, set parameters of 
# https://chocolatey.org/packages/chocolateypackageupdater
chocopkgup $hash["nopush"] `
           --packagename=$app `
           --version="$($hash["version"])" `
           --url="$($hash["url"])" `
           --urlx64="$($hash["url64"])" `
           --checksum="$($hash["checksum"])" `
           --c64="$($hash["checksumx64"])" `
           --debug

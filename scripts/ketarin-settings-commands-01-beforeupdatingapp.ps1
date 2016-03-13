# requires:
#  chocolateypackageupdater
#  >=ketarin-1.8.5

$vars = "version","url","url64","checksum","checksumx64","nopush"
$hash = @{}

foreach ($var in $vars) {
  if ($app.variables.ContainsKey($var)) {
    $hash[$var] = $app.variables.item($var).cachedcontent
  } else {
    $hash[$var] = "{$var}"
  }
  Write-Host "`$hash[$var] is: $($hash[$var])"
}

Write-Host "Running: 'chocopkgup $($hash["nopush"]) --packagename=$app --version=`"$($hash["version"])`" --url=`"$($hash["url"])`" --urlx64=`"$($hash["url64"])`" --checksum=`"$($hash["checksum"])`" --c64=`"$($hash["checksumx64"])`" --debug'"

chocopkgup $hash["nopush"] --packagename=$app --version="$($hash["version"])" --url="$($hash["url"])" --urlx64="$($hash["url64"])" --checksum="$($hash["checksum"])" --c64="$($hash["checksumx64"])" --debug

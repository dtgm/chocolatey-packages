# powershell v2 compatibility
$psVer = $PSVersionTable.PSVersion.Major
if ($psver -ge 3) {
  function Get-ChildItemDir {Get-ChildItem -Directory $args}
} else {
  function Get-ChildItemDir {Get-ChildItem $args}
}

$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = $url
$checksum64 = $checksum
$checksumType64 = $checksumType
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

                             
Write-Debug "This package supports package specific parameters."
$arguments = @{}
# use the $env:chocolateyPackageParameters inside this package
$packageParameters = $env:chocolateyPackageParameters
# default values
$desktop = $false
$taskbar = $false
# parse user specified package parameters
if ($packageParameters) {
    $regex = "\/(?<option>([a-zA-Z]+))"
    $option_name = 'option'
    $value_name = 'value'

    if ($packageParameters -Match $regex ) {
      $search = "*.exe"
      $path = (Get-ChildItemDir $toolsDir -ErrorAction SilentlyContinue | Sort-Object -Property CreationTime | Select-Object -Last 1).FullName
      $exe = Get-ChildItem (Join-Path $path $search) -ErrorAction SilentlyContinue

      $results = $packageParameters | Select-String $regex -AllMatches
      $results.Matches | ForEach-Object {
        $arguments.Add(
          $_.Groups[$option_name].Value.Trim(),
          $_.Groups[$value_name].Value.Trim())
      }
    } else {
        Throw "REGEX FAILURE: Package Parameters were found but were invalid"
    }
    
    if ($arguments.ContainsKey("desktop")) {
      Write-Debug "Detected `"desktop`""
      $desktop = $true
    }
    if ($arguments.ContainsKey("taskbar")) {
      Write-Debug "Detected `"taskbar`""
      $taskbar = $true
    }
    
} else {
    Write-Debug "No Package Parameters passed in"
}

if ($desktop) { 
  Write-Host "Creating desktop icon"
  Install-ChocolateyDesktopLink -TargetFilePath $exe
}

if ($taskbar) { 
  Write-Host "Pinning to taskbar"
  Install-ChocolateyPinnedTaskBarItem -TargetFilePath $exe
}
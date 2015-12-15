$packageName = '{{PackageName}}'
$installerType = 'exe'
$urlArray = {{DownloadUrlx64}}
$url = $urlArray[0]
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'
$validExitCodes = @(0)
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$arguments = @{}
$packageParameters = $env:chocolateyPackageParameters

Write-Debug "Default values for package parameters: 0=off, 1=on"
$desktop = 0
$thumbs = 0
$group = 0
$allusers = 1
$assoc = 0
$ini = "%APPDATA%\IrfanView"
$folder = $null

if ($packageParameters) {
    $match_pattern = "\/(?<option>([a-zA-Z]+))=(?<value>([`"'])?([a-zA-Z0-9- _\\:%\.]+)([`"'])?)|\/(?<option>([a-zA-Z]+))"
    $option_name = 'option'
    $value_name = 'value'

    if ($packageParameters -match $match_pattern ){
        $results = $packageParameters | Select-String $match_pattern -AllMatches
        $results.matches | ForEach-Object {
          $arguments.Add(
              $_.Groups[$option_name].Value.Trim(),
              $_.Groups[$value_name].Value.Trim())
      }
    } else {
        Throw "Package Parameters were found but were invalid (REGEX failure)"
    }

    if ($arguments.ContainsKey("desktop")) {
        Write-Verbose "Adding desktop shortcut to IrfanView"
        $desktop = 1
    }

    if ($arguments.ContainsKey("thumbs")) {
        Write-Verbose "Adding desktop shortcut to IrfanView Thumbnails"
        $thumbs = 1
    }

    if ($arguments.ContainsKey("group")) {
        Write-Verbose "Adding IrfanView group to start menu"
        $group = 1
    }
    
    if ($arguments.ContainsKey("allusers")) {
        Write-Verbose "Installing IrfanView for only current user"
        $allusers = 0
    }
    
    if ($arguments.ContainsKey("assoc")) {
        Write-Verbose "Associating IrfanView to file types"
        $assoc = $arguments["assoc"]
    }

    if ($arguments.ContainsKey("ini")) {
        Write-Verbose "You want to use a custom configuration Path"
        $ini = $arguments["ini"]
    }
    
    if ($arguments.ContainsKey("folder")) {
        Write-Verbose "You want to use a custom configuration Path"
        $folder = $arguments["folder"]
    }

} else {
    Write-Debug "No package parameters passed in"
}

$silentArgs = "/silent" + 
              " /desktop=" + $desktop + 
              " /thumbs=" + $thumbs + 
              " /group=" + $group + 
              " /allusers=" + $allusers +
              " /assoc=" + $assoc
if ($ini) { $silentArgs += " /ini=" + $ini }
if ($folder) { $silentArgs += " /folder=" + $folder }
Write-Debug "Silent arguments Chocolatey will use are: $silentArgs"

Write-Debug "Compatibility - Get-UrlFromFosshub function is provided by this package"
if (!(Get-Command Get-UrlFromFosshub -ErrorAction SilentlyContinue)) {
  Import-Module "$($toolsDir)\Get-UrlFromFosshub.ps1"
}
$url = Get-UrlFromFosshub $url
$url64 = Get-UrlFromFosshub $url64

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"
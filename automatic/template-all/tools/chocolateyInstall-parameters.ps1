$arguments = @{}

  # Let's assume that the input string is something like this, and we will use a Regular Expression to parse the values
  # /Port:81 /Edition:LicenseKey /AdditionalTools

  # Now we can use the $env:chocolateyPackageParameters inside the Chocolatey package
  $packageParameters = $env:chocolateyPackageParameters

  # Default the values
  $port = "81"
  $edition = "LicenseKey"
  $additionalTools = $false
  $installationPath = "c:\temp"

  # Now parse the packageParameters using good old regular expression
  if ($packageParameters) {
      $match_pattern = "\/(?<option>([a-zA-Z]+)):(?<value>([`"'])?([a-zA-Z0-9- _\\:\.]+)([`"'])?)|\/(?<option>([a-zA-Z]+))"
      $option_name = 'option'
      $value_name = 'value'

      if ($packageParameters -match $match_pattern ){
          $results = $packageParameters | Select-String $match_pattern -AllMatches
          $results.matches | % {
            $arguments.Add(
                $_.Groups[$option_name].Value.Trim(),
                $_.Groups[$value_name].Value.Trim())
        }
      }
      else
      {
          Throw "Package Parameters were found but were invalid (REGEX Failure)"
      }

      if ($arguments.ContainsKey("Port")) {
          Write-Host "Port Argument Found"
          $port = $arguments["Port"]
      }

      if ($arguments.ContainsKey("Edition")) {
          Write-Host "Edition Argument Found"
          $edition = $arguments["Edition"]
      }

      if ($arguments.ContainsKey("AdditionalTools")) {
          Write-Host "You want Additional Tools installed"
          $additionalTools = $true
      }

      if ($arguments.ContainsKey("InstallationPath")) {
          Write-Host "You want to use a custom Installation Path"
          $installationPath = $arguments["InstallationPath"]
      }
  } else {
      Write-Debug "No Package Parameters Passed in"
  }

  $silentArgs = "/S /Port:" + $port + " /Edition:" + $edition + " /InstallationPath:" + $installationPath
  if ($additionalTools) { $silentArgs += " /Additionaltools" }

  Write-Debug "This would be the Chocolatey Silent Arguments: $silentArgs"
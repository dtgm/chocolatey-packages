function New-IgnoreBin {
  [CmdletBinding()]
  param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [ValidateScript({ Test-Path $_ })]
    [string] $Name
  )

  $Name = Resolve-Path $Name

  New-Item "$Name.ignore" -Type "File" -Force | Out-Null
}

function New-GuiBin {
  [CmdletBinding()]
  param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [ValidateScript({ Test-Path $_ })]
    [string] $Name
  )

  $Name = Resolve-Path $Name

  New-Item "$Name.gui" -Type "File" -Force | Out-Null
}

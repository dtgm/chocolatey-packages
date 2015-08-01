$packageName = 'psiphon'
$url = 'https://psiphon.ca/psiphon3.exe'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url"

# create an empty sidecar metadata file for closed-source shimgen.exe to designate exe has gui
Set-Content -Path ("$installFile.gui") `
            -Value $null
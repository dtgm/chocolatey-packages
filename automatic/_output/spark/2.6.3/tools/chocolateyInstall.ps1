$packageName = 'Spark'
$fileType = 'exe'
$args = '/S'
$url = 'http://www.igniterealtime.org/downloads/download-landing.jsp?file=spark/spark_2_6_3.exe'

Install-ChocolateyPackage $packageName $fileType $args $url

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

Start-ChocolateyProcessAsAdmin (Join-Path $scriptDir 'chocolateyPostInstallUAC.ps1')
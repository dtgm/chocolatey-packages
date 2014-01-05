$packageName = 'usagestats'
$installerType = 'msi'
$silentArgs = '/qb'
$url  = 'https://usagestats.codeplex.com/downloads/get/388694'

Install-ChocolateyPackage -packageName "$packageName" -fileType "$installerType" -url "$url" -silentArgs "$silentArgs" -validExitCodes @(0)
$packageName = 'dogecoin-1.7.1-win64-setup'
$fileType = 'exe'
$url = 'https://github.com/dogecoin/dogecoin/releases/download/v1.7.1/dogecoin-1.7.1-win64-setup.exe'
$silentArgs = '/S'

Install-ChocolateyPackage $packageName $fileType "$silentArgs" "$url"

$packageName = 'bitcoincore'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://bitcoin.org/bin/0.9.3/bitcoin-0.9.3-win32-setup.exe'
$url64 = 'https://bitcoin.org/bin/0.9.3/bitcoin-0.9.3-win64-setup.exe'

Install-ChocolateyPackage $packageName $installerType "$silentArgs" "$url" "$url64"
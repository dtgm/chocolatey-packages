Install-ChocolateyPackage -packageName $packageName -fileType 'exe' -silentArgs '/Q' `
                    -url 'http://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x86.exe' `
                    -url64bit 'http://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x64.exe'



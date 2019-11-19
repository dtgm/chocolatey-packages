$url32='http://www.scilab.org/download/5.4.1/scilab-5.4.1.exe'
$url64='http://www.scilab.org/download/5.4.1/scilab-5.4.1_x64.exe'
Install-ChocolateyPackage SciLab exe '/verysilent' "$url32" "$url64"
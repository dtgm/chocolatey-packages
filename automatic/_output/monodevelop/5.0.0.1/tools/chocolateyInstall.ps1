$name = "monodevelop"
$url = "http://download.xamarin.com/studio/Windows/XamarinStudio-5.0.0.878-0.msi"
$kind = "MSI"
$silent = "/Q"

Install-ChocolateyPackage $name $kind $silent $url

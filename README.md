# chocolatey-packages
automatic and manual packages for management by [Chocolatey](https://chocolatey.org/) and available on the [Chocolatey package feed](https://chocolatey.org/packages)

[Chocolatey wiki](https://github.com/chocolatey/choco/wiki)
[Chocolatey frequently asked questions (FAQ)](https://github.com/chocolatey/choco/wiki/ChocolateyFAQs)

## Folder organization

<pre>
chocolatey-packages
├── automatic
│   ├── _output
│   │   ├── andy    
│   │   │   ├── 0.43.2    
│   │   │   │   ├── tools
│   │   │   │   │   ├── chocolateyInstall.ps1
│   │   │   │   │   └── chocolateyUninstall.ps1
│   │   │   │   ├── andy.0.43.2.nupkg
│   │   │   │   └── andy.nuspec    
│   │   │   └── 0.43.3  
│   │   └── bitcoin 
│   │   │   ...
│   │   └── zsnes
│   ├── andy
│   │   ├── tools
│   │   │   ├── chocolateyInstall.ps1
│   │   │   └── chocolateyUninstall.ps1
│   │   └── andy.nuspec
│   ├── bitcoin
│   │   ...
│   └── zsnes
├── icons
│   ├── andy.png
│   ├── bitcoin.svg
│   │   ...
│   └── zsnes.png
├── ketarin
│   ├── andy.xml
│   ├── bitcoin.xml
│   │   ...
│   └── zsnes.xml
├── licenses
└── manual
    └── hpusbdisk
        ├── tools
        │   ├── chocolateyInstall.ps1    
        │   └── HPUSBDisk.exe    
        ├── hpusbdisk.2.2.3.20150128.nupkg
        └── hpusbdisk.nuspec
</pre>

### automatic
Packages automatically maintained by: 

1. scraping HTTP with regular expressions using ketarin, then
2. populating a reserved layout to XML and powershell install/uninstall/setup scripts, and finally
3. pushing the compiled zip file (saved as nupkg) content to chocolaty feed for moderation

Each sub-directory is equivalent to the application ID, otherwise known as the Application Name in Ketarin and stored in Ketarin's variable `{appname}`

#### Example of variable exchange between programs:

<pre>
Location   User-config     Variable
--------   -----------     --------
Ketarin: `Application Name` `{appname}`
chocopkgup  N/A             --packagename={appname}
file.nuspec N/A             '{{PackageName}}' 
</pre>

#### Full example workflow

Determine an appropriate install name via [package naming guidelines](https://github.com/chocolatey/chocolatey/wiki/CreatePackages#naming-your-package)

Using GTK Runtime as an example, the following lists a sample usage of variables between the programs and files involved:

* Program | Ketarin | {appname} = Application Name = gtk-runtime

> Note this is a user configurable variable 

* Folder = C:\path\to\chocolatey-packages\automatic\gtk-runtime
* File | nuspec = C:\path\to\chocolatey-packages\automatic\gtk-runtime\gtk-runtime.nuspec

> Note: If Program, Folder, and File are not equivalent, a package will not be automatically produced.

Pushed to https://chocolatey.org/packages/gtk-runtime

Installable by `choco install gtk-runtime` 

See [ketarin\README.md](https://github.com/dtgm/chocolatey-packages/blob/master/ketarin/README.md) for more information about automatically updating packages from this repo.

### icons
Icons presented on the respective chocolatey package page.

e.g. the icon on `https://chocolatey.org/packages/gtk-runtime/2.24.10.20121010` is linked to `https://cdn.rawgit.com/dtgm/chocolatey-packages/19d35dff574b7496b92f235fa1503d47b861871a/icons/gtk-runtime.svg` and is configured by XML tag `<iconUrl>` in `gtk-runtime.nuspec` when `nuget.exe push gtk-runtime.1.2.3.nupkg -Source https://chocolatey.org/` (performed without user intervention by `chocolateypackageupdater`).

### licenses 
Limited use cases where the legal user agreements to terms of usage of the software for packages being installed is not available or not in reliably published way for Internet access.

If applicable, this location would be pointed to by `<licenseUrl>`.

However, most all packages point directly to the LICENSE or COPYING file if the source code is publicly available.  Otherwise, the `<licenseUrl>` points to the licensing terms as published on a publicly available web page.

### manual
Packages that must have their nuspec and powershell control scripts manually edited (text editor), packaged (cpack) and pushed (cpush).

Only packages that __never__ get updated should be here.

## Others' repositories
* [DEPRECATED] https://github.com/adgellida/chocolateyautomaticpackages
* https://github.com/ferventcoder/chocolatey-packages
* https://github.com/chocolatey/chocolatey-coreteampackages
* https://github.com/alanstevens/ChocoPackages
* https://github.com/AnthonyMastrean/chocolateypackages
* https://github.com/MarkRobertJohnson/ChocolateyPackages
* https://github.com/ComFreek/chocolatey-packages
* https://github.com/yoshimov/chocolatey-packages
* https://github.com/Redsandro/chocolatey

[Chocolatey API feed](http://chocolatey.org/api/v2/)
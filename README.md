# chocolatey-packages
automatic and manual packages for management by [Chocolatey](https://chocolatey.org/) and available on the [Chocolatey package feed](https://chocolatey.org/packages)

## Folder organization

### automatic
Packages automatically maintained by: 
1. scraping HTTP with regular expressions using ketarin, then
2. populating a reserved layout to XML and powershell install/uninstall/setup scripts, and finally
3. pushing the compiled zip file (saved as nupkg) content to chocalety feed for moderation

Each sub-directory is equivalent to the application ID, otherwise known as the Application Name in Ketarin and stored in Ketarin's variable `{appname}`

#### Example of variable exchange between programs:
Location   User-config     Variable
--------   -----------     --------
Ketarin: `Application Name` `{appname}`
chocopkgup  N/A             --packagename={appname}
file.nuspec N/A             '{{PackageName}}' 

#### Full example workflow

1. Determine an appropriate install name via [package naming guidelines](https://github.com/chocolatey/chocolatey/wiki/CreatePackages#naming-your-package)

Using GTK Runtime as an example, the following lists a sample usage of variables between the programs and files involved:

* Program | Ketarin | {appname} = Application Name = gtk-runtime
> Note This is a user configurable variable 
* Folder = C:\path\to\chocolatey-packages\automatic\gtk-runtime
* File | nuspec = C:\path\to\chocolatey-packages\automatic\gtk-runtime\gtk-runtime.nuspec

Note: If Program, Folder, and File are not equivalent, a package will not be automatically produced.

Pushed to https://chocolatey.org/packages/gtk-runtime

Installable by `choco install gtk-runtime` 

See `ketarin\README.md` for more information.

### icons
Icons presented on the respective chocolatey package page.

e.g. the icon on `https://chocolatey.org/packages/gtk-runtime/2.24.10.20121010` is linked to `https://cdn.rawgit.com/dtgm/chocolatey-packages/19d35dff574b7496b92f235fa1503d47b861871a/icons/gtk-runtime.svg` and is configured by XML tag `<iconUrl>` in `gtk-runtime.nuspec`

### licenses 
Limited use cases where the legal user agreements to terms of usage of the software for packages being installed is not available or not in reliably published way for Internet access.

If applicable, this location would be pointed to by `<licenseUrl>`.

Most all packages point directly to the LICENSE or COPYING file if the source code is publically available.  Otherwise, the `<licenseUrl>` points to the licensing terms as published on a publically available web page.

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
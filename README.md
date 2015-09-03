# chocolatey-packages
Automatic and manual nuget-based packages for management by [Chocolatey](https://chocolatey.org/).

Chocolatey is a package manager like `apt-get` or `yum`; designed for a command-line interface for management and installing MSI, EXE, and portable user applications.
Nuget is mainly designed for installing developer libraries.

[Chocolatey package API ODATA feed](http://chocolatey.org/api/v2/)

Presentation resources (read the Odata feed and presents it to you in various methods and formats)

* Web: [Chocolatey.org](https://chocolatey.org/packages)
* Web: [NuGetFeed.org](http://nugetfeed.org/)
* App: [ChocolateyGUI](https://chocolatey.org/packages/ChocolateyGUI)
* App: [OuiGuiChocolatey](https://chocolatey.org/packages/OuiGuiChocolatey)
* Cmd: [choco list -h](https://chocolatey.org/packages/Chocolatey)

[Chocolatey Wiki](https://github.com/chocolatey/choco/wiki)

[Chocolatey Frequently Asked Questions (FAQ)](https://github.com/chocolatey/choco/wiki/ChocolateyFAQs)

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

##### Source files typically containing variable values

Package manifest: [Nuspec](http://docs.nuget.org/Create/Nuspec-Reference) (nuspec)
Install and uninstall scripts: [PowerShell](https://technet.microsoft.com/en-us/library/bb978526.aspx) (ps1)

##### Source files typically __not__ containing variable values

GUI automation: [AutoHotKey](http://ahkscript.org/) (ahk) or [AutoIt](https://www.autoitscript.com/site/autoit/) (au3)

##### Automation process

1. scraping HTTP with regular expressions using [ketarin](https://ketarin.org/), then
2. populating a reserved layout to XML and powershell install/uninstall/setup scripts with [chocopkgupdater](https://chocolatey.org/packages/chocolateypackageupdater) or other scripts, and finally
3. packing the generated source files into a zip file, saved as a [nupkg](http://docs.nuget.org/Create/Creating-and-Publishing-a-Symbol-Package)
4. pushing the nupkg file to chocolaty feed for moderation

Each sub-directory is equivalent to the application ID, otherwise known as the Application Name in Ketarin and stored in Ketarin's variable `{appname}`

See [ketarin\README.md](https://github.com/dtgm/chocolatey-packages/blob/master/ketarin/README.md) for more information about automatically updating packages from this repo.

### icons
Icons pointed to in the nuspec manifest file by XML tag `<iconUrl>`.  These URLs are shown as the package graphic on Chocolatey.org for the respective package.

e.g. the icon on `https://chocolatey.org/packages/gtk-runtime/2.24.10.20121010` is linked to `https://cdn.rawgit.com/dtgm/chocolatey-packages/19d35dff574b7496b92f235fa1503d47b861871a/icons/gtk-runtime.svg` and is configured in `gtk-runtime.nuspec` by XML tag `<iconUrl>`  when `nuget.exe push gtk-runtime.1.2.3.nupkg -Source https://chocolatey.org/` (performed without user intervention by `chocolateypackageupdater`).

The URL that should be used should not point directly to the file.  Instead, use this service http://rawgit.com/

### licenses 
Limited use cases where the legal user agreements to terms of usage of the software for packages being installed is not available or not in reliably published way for Internet access.

If applicable, this location would be pointed to by `<licenseUrl>`.

However, most all packages point directly to the LICENSE or COPYING file if the source code is publicly available.  Otherwise, the `<licenseUrl>` points to the licensing terms as published on a publicly available web page.

### manual
Packages that must have their nuspec and powershell control scripts manually edited (text editor), packaged (cpack) and pushed (cpush).

Only packages that __never__ get updated should be here.

Note that while Nupkg files may contain any binary file, typically, they only contain essential wrapper information explaining where the install program is located and how to install the program.  However, since packages in this folder may no longer have an official published source, they may be more likely to contain the executable or install file(s) directly within the zipped nupkg file.

## Others' repositories
* https://github.com/ferventcoder/chocolatey-packages
* https://github.com/chocolatey/chocolatey-coreteampackages
* https://github.com/alanstevens/ChocoPackages
* https://github.com/AnthonyMastrean/chocolateypackages
* https://github.com/MarkRobertJohnson/ChocolateyPackages
* https://github.com/ComFreek/chocolatey-packages
* https://github.com/yoshimov/chocolatey-packages
* https://github.com/Redsandro/chocolatey
* [DEPRECATED] https://github.com/adgellida/chocolateyautomaticpackages


## Package name -- Package id

* Chocolatey is cross-platform.  
* Package managers are quite mature in Linux relative to Windows.

For ease of transition between OS', it is recommended to use the same ID as used in other package managers when possible.

### [Package formats](https://wikipedia.org/wiki/Package_format)
* .apk — Android
* .appx, .appxbundle — used by Microsoft for packaging Windows 8, Windows 8.1, and Windows Phone 8.1 applications.[2]
* .deb — Used by Debian and its derivatives, such as Ubuntu, Xubuntu, and CrunchBang Linux.[3]
* ebuild — Used by Gentoo Linux.[4]
* PISI — Used by Pardus and derivatives such as Pardus-Anka and Pisi Linux.[citation needed]
* .pkg - Used by iPhone, PlayStation 3, Solaris (operating system).[citation needed]
* PUP and PET — used by Puppy Linux - click and install package type. OS can be installed to a flash drive for portability and will bring apps with it.[5]
* QPKG — Used by QNAP NAS devices.[6]
* .rpm — Used by Red Hat Enterprise Linux, Fedora, derivatives such as CentOS and SUSE Linux Enterprise Server.[7]
* SLP — Used by Stampede Linux.[citation needed]
* .pkg.tar.xz — Used by Arch Linux's Pacman package manager.[8]
* .tgz, .txz, .tbz, .tlz — Used by Slackware.[9]

### Package lists

* Debian: [stable text list](https://packages.debian.org/stable/allpackages?format=txt.gz) -- Ubuntu: http://packages.ubuntu.com/ ([trusty text list](http://packages.ubuntu.com/trusty/allpackages?format=txt.gz))
* Redhat Fedora: https://admin.fedoraproject.org/pkgdb/ -- Others: http://rpm.pbone.net/, http://rpmfind.net/, 
* Gentoo: [categories](https://packages.gentoo.org/categories/), [text list](http://distfiles.gentoo.org/distfiles/) (also at [MIRROR](https://www.gentoo.org/downloads/mirrors/)/pub/gentoo/distfiles/)
* Arch: [repos](https://wiki.archlinux.org/index.php/Official_repositories), [mirror text list](https://www.archlinux.org/mirrorlist/all/)

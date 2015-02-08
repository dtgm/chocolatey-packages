# Exported automatic update job files from Ketarin for use with [Chocolatey Automatic Package Updater](https://chocolatey.org/packages/ChocolateyPackageUpdater)

## Setup:

1. `choco install chocolateypackageupdater`
This will install two additional chocolatey packages: **nuget.commandline** and **ketarin**
2. Configure installed chocolateypackageupdater files
**$Env:ChocolateyInstall\tools\chocopkgup\chocopkgup.exe.config**
Modify xml "add" tag with keyvalue "PackagesFolder" with value of "C:\path\to\chocolaty\packages" so it looks like:
`<add key="PackagesFolder" value="C:\path\to\chocolatey\packages"/>`
"C:\path\to\chocolaty\packages\" will be the root folder of your chocolatey packages where each sub-directory will a different package where folder-name is equal to the "packageId"
Note: packages will be published to an automatically generated sub-folder "_output" in this location by chocopkgup.exe.

**$Env:ChocolateyInstall\tools\chocopkgup\ketarinupdate.cmd**
Ensure the correct ketarin.exe file is being executed:
`PS C:\> (get-command ketarin.exe).Definition
C:\ProgramData\chocolatey\bin\Ketarin.exe`

3. Run ketarin.exe and import any of the XML files in this repository.

4. Ctrl+T | (File > Settings) > Commands
[General]
Name: Version
Value: {version}

[Commands]
chocopkgup {nopush} --packagename={appname} --version={version} --pg="{packageGuid}" --url="{preupdate-url}" --urlx64="{url64}" --packagepath="{file}" --checksum="{checksum}" --c64="{checksumx64}" --debug

## How it works:

1. Task scheduler runs Ketarin according to schedule.
`choco install chocolateypackageupdater`
2. Ketarin launches and checks for updated packages with a version greater than version in associated XML file
3. If new version is available, Ketarin executes command-line program  [chocopkgup.exe](https://github.com/chocolatey/chocolatey-package-updater)
4. Ketarin passes variables found in that application's variables to chocopkgup.exe
5. ChocoPkgUp.exe reads config file and passes variables

## Help with Ketarin

[Support forum](https://ketarin.org/forum/index.php)
Please note you will only get help with Ketarin here, such as with issues of proper use of regular expressions to capture version or other information.  ChocolateyPackageUpdater is currently closed source and only allows passing specific variables for use in nuspec and powershell scripts.  If you need help with packages not being generated please post to the [Chocolatey support forum](https://groups.google.com/forum/#!forum/chocolatey).

Regular expressions (regex) have a specific purpose of matching strings within text.  Manipulating the resultant match is outside the scope of regex.  For that, use Ketarin's built-in [variable adjustment functions](http://wiki.ketarin.org/index.php/Functions)

It is useful to use [variables](http://wiki.ketarin.org/index.php/Special_variables) whenever possible to minimize updating requirements when websites get updated.  Ketarin has three types of variables in respect to ChocolateyPackageUpdater (chocopkgup.exe):

* main variables
* user variables
* chocopkgup variables

Not all main and user variables are accessible by chocopkgup.exe. 

chocopkgup variables are found at **$Env:ChocolateyInstall\tools\chocopkgup\chocopkgup.exe.config**

ketarin variables variables accessible to nuspec/powershell scripts are listed at https://github.com/chocolatey/chocolatey/wiki/AutomaticPackages#setup

* {{PackageName}} - Package Name (should be same as nuspec file and folder) |/p
* {{PackageVersion}} - The updated version | /v
* {{DownloadUrl}} - The url for the native file | /u
* {{PackageFilePath}} - Downloaded file if including it in package | /pp
* {{PackageGuid}} - This will be used later | /pg
* {{DownloadUrlx64}} - The 64bit url for the native file | /u64
(as of 0.6.4)
* {{Checksum}} - The checksum for the file downloaded from DownloadUrl | /c
* {{Checksumx64}} - The checksum for the 64bit file downloaded from DownloadUrlx64  | /c64

Within Ketarin, after creating a package, the following variable must exist.

* version

The following variables may exist dependent on availability:

* url64
* checksum
* checksumx64

Typically not included as of Feb 2015:

* packagefilepath
* packageguid

and output from `chocopkgup -?`

Usage of Chocolatey Package Updater (chocopkgupdater)
chocopkgup.exe /p[ackage] VALUE /v[ersion] VALUE [ /u[rl] VALUE /p[ackages]f[older] VALUE /disablepush ]
  -?, --help, -h             Prints out the options.
  -p, --pkg, --package, --packagename=VALUE
                             REQUIRED: packagename - The name of the folder
                               that has the package file you want the file to
                               use.
  -v, --version=VALUE        REQUIRED: version - The version you want the
                               file to use.
  -u, --url=VALUE            url - The url to the download file.
      --u64, --urlx64=VALUE  urlx64 - The 64bit url to the download file.
  -c, --checksum=VALUE       checksum - The checksum for the file.
      --c64, --checksumx64=VALUE
                             checksumx64 - The checksum for the 64-bit url.
      --pf, --packagesfolder=VALUE
                             packagesfolder - The packages folder to search
                               for the packagename. If not specified, will use
                               the one in the configuration.
      --pp, --packagepath, --packagefilepath=VALUE
                             packagefilepath - If you pack the actual
                               executable or zip into the package, specify it
                               here.
      --pg, --guid, --packageguid=VALUE
                             guid - The GUID of the application.
      --nopush, --disablepush
                             disablepush - This switch means the file will
                               not be pushed.
  -f, --force                force - This instructs ChocoPkgUp overwrite an
                               existing work package. Defaults to false.
      --dbg, --debug         debug - This instructs ChocoPkgUp to write out
                               all messages. Defaults to false.
                               

# Automatic updating chocolatey packages 

This directory contains files from [Ketarin](https://chocolatey.org/packages/ketarin) for use with [Chocolatey Automatic Package Updater](https://chocolatey.org/packages/ChocolateyPackageUpdater)

## About Ketarin

[Homepage](https://ketarin.org/)  
[FAQ](https://ketarin.org/forum/topic/310-ketarin-faq)  
[Wiki](http://wiki.ketarin.org/)  
[Forum](https://ketarin.org/forum/)  
[GPLv2 License](http://scm.flyspray.org/repos/ketarin/LICENSE.txt)

[Source code tar.gz](http://cdburnerxp.se/downloads/sourcecode/Ketarin.tar.gz)  
[Source code SVN](http://scm.flyspray.org/repos/ketarin/)


Ketarin is a program to scrape webpages for content matching regex patterns, store it in built-in and/or user-defined variables, and use that information to populate a local SQLite database file.  Application entries may be uploaded or downloaded via an online repository or created and maintained locally.  Ketarin will then download the installation file, typically an MSI or EXE, to a local folder dependent on detecting a never version available.  Ketarin  may continue to attempt to run specified batch commands or c# scripts.  Typically, the scripting commands are used to silently install the program, but any commandline program may be triggered upon detection of an available application update.  

Ketarin's tagline is "Keep your setup packages up-to-date..."

> __What is it all about?__
>Ketarin is a small application which automatically updates setup packages. As opposed to other tools, Ketarin is not meant to keep your system up-to-date, but rather to maintain a compilation of all important setup packages which can then be burned to disc or put on a USB stick.
I created this application, because I couldn't find anything like it when I needed such a functionality. Since I don't want my efforts go to waste, I decided to release it to the public. Ketarin is open source, so you can also extend its functionality to fit your needs (just note that you may not use the icons that ship with it freely as well). I'd also appreciate source code contributions. Ketarin is written in C#, for the .NET Framework 2.0 and uses SQLite as database engine.

> __How does it work?__
>Basically, it monitors the content of web pages for changes and downloads files to a specified location. There is a tutorial explaining it all. Currently, you can either rely on a service based on FileHippo, or you can define your own rules, even using regular expressions (for advanced users). A similar application, for monitoring web pages, is Webmon and has sometimes served as guide.

## Setup for use with chocolatey:

1. `choco install chocolateypackageupdater`
> This will install two additional chocolatey packages: **nuget.commandline** and **ketarin**
2. Configure installed chocolateypackageupdater files: 
  * `$Env:ChocolateyInstall\tools\chocopkgup\chocopkgup.exe.config`
    * Modify xml "add" tag with keyvalue "PackagesFolder" with value of "C:\path\to\chocolaty\packages" so it looks like:
`<add key="PackagesFolder" value="C:\path\to\chocolatey\packages"/>`
    * "C:\path\to\chocolaty\packages\" will be the root folder of your chocolatey packages where each sub-directory will a different package where folder-name is equal to the "packageId"
  
	  Note: packages will be published to an automatically generated sub-folder "_output" in this location by chocopkgup.exe.

  * $Env:ChocolateyInstall\tools\chocopkgup\ketarinupdate.cmd**
    * Ensure the correct ketarin.exe file is being executed:
    *  `PS C:\> (get-command ketarin.exe).Definition
        C:\ProgramData\chocolatey\bin\Ketarin.exe`

3. Run ketarin.exe

4. Modify settings
```
Ctrl+T | (File > Settings)
[General]
Custom Column Name = Version
Custom Column Value = {version}
[Commands]
chocopkgup {nopush} --packagename={appname} --version={version} --pg="{packageGuid}" --url="{preupdate-url}" --urlx64="{url64}" --packagepath="{file}" --checksum="{checksum}" --c64="{checksumx64}" --debug
```

5. Add Applications to ketarin with either File > New Application, or importing any of the XML files in this repository.

6. Minimum Ketarin field requirements for applications

[Application tab]
  * Application name
  * URL
	* Variables > version
	* where **version** is a string as specified at http://docs.nuget.org/create/versioning and http://semver.org/
	
Important: `Application name` must be all lowercase with no spaces or special characters.  To determine an appropriate name for your packages see the [package naming guidelines](https://github.com/chocolatey/chocolatey/wiki/CreatePackages#naming-your-package)

7. Create an associated folder `C:\path\to\chocolaty\packages\exampleprogram`

8. Create an associated nuspec file `C:\path\to\chocolaty\packages\exampleprogram\exampleprogram.nuspec`

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

<pre>
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
</pre>

### c# scripts

Working script environment may be seen in [Forms\CommandControl.cs](http://scm.flyspray.org/repos/ketarin/Forms/CommandControl.cs) ([gh mirror](https://github.com/svn2github/ketarin/blob/master/Forms/CommandControl.cs))  

Most work is done in the [ApplicationJob class](http://scm.flyspray.org/repos/ketarin/ApplicationJob.cs) ([gh mirror](https://github.com/svn2github/ketarin/blob/master/ApplicationJob.cs))


                               
### For more information see:

https://github.com/chocolatey/chocolatey/wiki/CreatePackages  
https://github.com/chocolatey/chocolatey/wiki/AutomaticPackages


> Added from main README  
> TODO: Integrate into this README

#### Example of variable exchange between programs:

```
Location    User-config         Variable
--------    -----------         --------
Ketarin:    Application Name    {appname}
chocopkgup  N/A                 --packagename={appname}
file.nuspec N/A                 {{PackageName}} 
```

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

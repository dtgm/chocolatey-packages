# Short-term roadmap for package production

## Minimum requirements for pushing packages to this repository

Auto install; no user action required to install
Auto uninstall; no user action required to uninstall

Silent install; no additional windows created during install
Silent uninstall; no additional windows created during uninstall

All XML tags completed in nuspec

## Phase: Integration

[Package Maintainer Handover](https://github.com/chocolatey/choco/wiki/PackageMantainerHandover)

Use when package maintainers:
* Quit
* Quiet
* Occassional

Manually updating packages: most

Automatic packages: use algorithms to automatically find updates and push them

Failures when distribution:
* URL host change: changing [SCM](https://en.wikipedia.org/wiki/Source_control_management) technologies
* URL path change: remapping hierarchical organization
* Web document change: method of extracting URL or program version fails


## Phase: New

[ ] 

## Phase: Update existing

[ ] Custom InstallParameters

# Long-term roadmap for package production

[ ] Automatic un/install
[ ] Development
      Nightly/Alpha/Beta/Stable
      Experimental/Unstable/Testing/Stable
      etc.
[ ] Install; Inter-releated dependency
    Portable; Pre-packaged component
[ ] Local install location
[ ] Local bin location
[ ] Shortcut location
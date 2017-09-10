# DockerComposeCompletion
Docker Compose command completion for PowerShell.

![demo](demo.gif)

## Requirements
* PowerShell 5.0 or newer
* docker-compose cli in `$env:PATH`

## Quick Start

### Install
```powershell
Install-Module DockerComposeCompletion -Scope CurrentUser
```

### Import
```powershell
Import-Module DockerComposeCompletion
```

## Install and Import from GitHub
DockerComposeCompletion is a "well-formed" module.
You can install and import it in the usual manner as follows.

### Install
Download and place this repository's `DockerComposeCompletion` directory and files in a path that is listed in `$env:PSModulePath`.
You can see the paths listed in `$env:PSModulePath` as follows:
```powershell
PS C:\> $env:PSModulePath -split ';'
C:\Users\matt9ucci\Documents\WindowsPowerShell\Modules
C:\Program Files\WindowsPowerShell\Modules
C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules
```

If your target path is `C:\Users\matt9ucci\Documents\WindowsPowerShell\Modules`, execute the following commands:
```powershell
# Uninstall
Remove-Item $HOME\Documents\WindowsPowerShell\Modules\DockerComposeCompletion -Recurse -Force
# Download and Install
Invoke-WebRequest https://github.com/matt9ucci/DockerComposeCompletion/archive/master.zip -OutFile master.zip
Expand-Archive master.zip
Move-Item master\DockerComposeCompletion-master\DockerComposeCompletion "$HOME\Documents\WindowsPowerShell\Modules"
# Clean up
Remove-Item master.zip
Remove-Item master -Recurse -Force
```
`$HOME` is a PowerShell's automatic variable containing the full path of the user's home directory (in this case `C:\Users\matt9ucci`). 

### Import
To check if you can import DockerComposeCompletion, execute the following command:
```powershell
PS> Get-Module -ListAvailable DockerComposeCompletion

    Directory: C:\Users\matt9ucci\Documents\WindowsPowerShell\Modules

ModuleType Version    Name                                ExportedCommands
---------- -------    ----                                ----------------
Manifest   1.16.1.... DockerComposeCompletion
```

After the check, execute the following command to import the installed module:
```powershell
Import-Module DockerComposeCompletion
```

## Customization
You can add your own completers and modify default completers with your custom scripts.
To apply your custom scripts, set their path as follows:
```powershell
Import-Module DockerComposeCompletion -ArgumentList pathto\custom.ps1, pathto\custom.ps2
```

For information about how to write custom scripts, see [completers.ps1](DockerComposeCompletion/completers.ps1) and [completers4arguments.ps1](DockerComposeCompletion/completers4arguments.ps1)

## Known Issues
In PowerShell 5.0/5.1, one dash (`-`) and double dash (`--`) would not work well because of [a PowerShell's bug](https://github.com/PowerShell/PowerShell/issues/2912).
It will be [fixed in PowerShell 6.0](https://github.com/PowerShell/PowerShell/pull/3633).

A workaround for this issue is to type a character following `-` and `--`.
For example, type `-a`, `--b`, `--cd`, etc.

## Misc
This github repository will be often rebased.

## Links
* [PowerShell Gallery | DockerComposeCompletion](https://www.powershellgallery.com/packages/DockerComposeCompletion)

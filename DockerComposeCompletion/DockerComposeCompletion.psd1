@{

RootModule = 'DockerComposeCompletion.psm1'
ModuleVersion = '1.28.0.210127'
GUID = 'beba6899-d55e-4e1d-88f9-8a4d4a14d369'
Author = 'Masatoshi Higuchi'
CompanyName = 'N/A'
Copyright = '(c) 2021 Masatoshi Higuchi. All rights reserved.'
Description = 'Docker Compose command completion for PowerShell.'
PowerShellVersion = '5.0'
NestedModules = @('NativeCommandCompletion/NativeCommandCompletion.psd1')

FunctionsToExport = @()
CmdletsToExport = @()
VariablesToExport = @()
AliasesToExport = @()

PrivateData = @{
	PSData = @{
		Tags = 'docker-compose', 'completion'
		LicenseUri = 'https://github.com/matt9ucci/DockerComposeCompletion/blob/master/LICENSE'
		ProjectUri = 'https://github.com/matt9ucci/DockerComposeCompletion'
		ReleaseNotes = @'
First release for Docker Compose 1.28.0

In this release, the expression of NestedModules in psd1 file has changed:
  Old: NestedModules = @('NativeCommandCompletion')
  New: NestedModules = @('NativeCommandCompletion/NativeCommandCompletion.psd1')

The change is due to the Publish-Module function and PowerShell Gallery, which can not accept the old style.
'@
	}
}

DefaultCommandPrefix = 'DockerCompose'

}

@{

RootModule = 'DockerComposeCompletion.psm1'
ModuleVersion = '1.27.0.200908'
GUID = 'beba6899-d55e-4e1d-88f9-8a4d4a14d369'
Author = 'Masatoshi Higuchi'
CompanyName = 'N/A'
Copyright = '(c) 2020 Masatoshi Higuchi. All rights reserved.'
Description = 'Docker Compose command completion for PowerShell.'
PowerShellVersion = '5.0'
NestedModules = @('NativeCommandCompletion')

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
First release for Docker Compose 1.27.0

Some tooltips updated, no new completer.
'@
	}
}

DefaultCommandPrefix = 'DockerCompose'

}

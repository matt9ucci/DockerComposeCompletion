@{

# Script module or binary module file associated with this manifest.
RootModule = 'DockerComposeCompletion'

# Version number of this module.
ModuleVersion = '1.19.0.180226'

# ID used to uniquely identify this module
GUID = 'beba6899-d55e-4e1d-88f9-8a4d4a14d369'

# Author of this module
Author = 'Masatoshi Higuchi'

# Company or vendor of this module
CompanyName = 'N/A'

# Copyright statement for this module
Copyright = '(c) 2018 Masatoshi Higuchi. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Docker Compose command completion for PowerShell.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.0'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('NativeCommandCompletion')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'docker-compose', 'completion'

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/matt9ucci/DockerComposeCompletion/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/matt9ucci/DockerComposeCompletion'

        # ReleaseNotes of this module
        ReleaseNotes = 'Update for Docker Compose 1.19.0'

    } # End of PSData hashtable

} # End of PrivateData hashtable

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
DefaultCommandPrefix = 'DockerCompose'

}

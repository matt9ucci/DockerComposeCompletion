Import-Module -Name $PSScriptRoot\..\DockerComposeCompletion -Force

function Get-Result([string]$Text, [int]$CursorPosition = $Text.Length, [hashtable]$Options) {
	[System.Management.Automation.CommandCompletion]::CompleteInput($Text, $CursorPosition, $Options).CompletionMatches
}

Describe 'docker-compose' {
	$result = Get-Result 'docker-compose --t'
	$result.Count | Should Be 5
	$result[0].CompletionText | Should Be --tls
	$result[1].CompletionText | Should Be --tlscacert
	$result[2].CompletionText | Should Be --tlscert
	$result[3].CompletionText | Should Be --tlskey
	$result[4].CompletionText | Should Be --tlsverify

	$result = Get-Result 'docker-compose bu'
	$result.Count | Should Be 1
	$result[0].CompletionText | Should Be build
}

Describe 'docker-compose up' {
	$result = Get-Result 'docker-compose up --no-'
	$result.Count | Should Be 5
	$result[0].CompletionText | Should Be --no-build
	$result[1].CompletionText | Should Be --no-color
	$result[2].CompletionText | Should Be --no-deps
	$result[3].CompletionText | Should Be --no-recreate
	$result[4].CompletionText | Should Be --no-start
}

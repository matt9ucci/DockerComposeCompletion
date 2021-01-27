#Requires -Module @{ ModuleName = 'Pester'; ModuleVersion = '5.1.1' }

BeforeAll {
	Import-Module $PSScriptRoot/../DockerComposeCompletion -Force

	function Get-Result([string]$Text, [int]$CursorPosition = $Text.Length, [hashtable]$Options) {
		[System.Management.Automation.CommandCompletion]::CompleteInput($Text, $CursorPosition, $Options).CompletionMatches
	}
}

Describe "docker-compose" {
	It "completes --t" {
		$result = Get-Result 'docker-compose --t'
		$result | Should -HaveCount 5
		$result[0].CompletionText | Should -Be --tls
		$result[1].CompletionText | Should -Be --tlscacert
		$result[2].CompletionText | Should -Be --tlscert
		$result[3].CompletionText | Should -Be --tlskey
		$result[4].CompletionText | Should -Be --tlsverify
	}

	It "completes bu" {
		$result = Get-Result 'docker-compose bu'
		$result | Should -HaveCount 1
		$result[0].CompletionText | Should -Be build
	}
}

Describe 'docker-compose up' {
	It "completes up --no-" {
		$result = Get-Result 'docker-compose up --no-'
		$result | Should -HaveCount 6
		$result[0].CompletionText | Should -Be --no-build
		$result[1].CompletionText | Should -Be --no-color
		$result[2].CompletionText | Should -Be --no-deps
		$result[3].CompletionText | Should -Be --no-log-prefix
		$result[4].CompletionText | Should -Be --no-recreate
		$result[5].CompletionText | Should -Be --no-start
	}
}

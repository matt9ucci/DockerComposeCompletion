Param(
	[string[]]$CustomScriptPath
)

function Select-CompletionResult {
	Param(
		[Parameter(Mandatory = $true, ValueFromPipeline = $true)]
		[NativeCommandCompletionResult[]]$CompletionResult,
		[switch]$OptionWithArg
	)

	Process {
		if ($OptionWithArg) {
			$CompletionResult = $CompletionResult |
				Where-Object { $_.CompletionText -Like '-*' -and $_.TextType -NE 'Switch' }
		}
		$CompletionResult
	}
}

Invoke-CompletionCustomScript $PSScriptRoot\completers.ps1, $PSScriptRoot\completers4arguments.ps1
if ($CustomScriptPath) {
	Invoke-CompletionCustomScript $CustomScriptPath
}

$argumentCompleter = {
	Param([string]$wordToComplete, $commandAst, $cursorPosition)

	$completerName = 'docker-compose'
	$optionWithArg = $null
	$command = $null
	$counter = 1

	for (; $counter -lt $commandAst.CommandElements.Count; $counter++) {
		$ce = $commandAst.CommandElements[$counter]
		if ($cursorPosition -lt $ce.Extent.EndColumnNumber) {
			break
		}

		if ($optionWithArg) {
			# The argument of $optionWithArg is completed by this $ce
			$optionWithArg = $null
			continue
		}

		$text = $ce.Extent.Text
		if ($text.StartsWith('-')) {
			if ($text -in (Invoke-Completer $completerName -Option -ArgumentList $wordToComplete, $commandAst, $cursorPosition |
						Select-CompletionResult -OptionWithArg).CompletionText) {
				$optionWithArg = $text
			}
		} elseif (!$command) {
			$command = $text
			$completerName += "_$command"
		}
	}

	if ($optionWithArg) {
		$completerName += "_$optionWithArg"
	}

	# At this point, $completerName is any of the following:
	# 'docker-compose'
	# 'docker-compose_optionWithArg'
	# 'docker-compose_command'
	# 'docker-compose_command_optionWithArg'

	if ($wordToComplete) {
		$wordToCompleteSubstring = $wordToComplete.Substring(0, $cursorPosition - $commandAst.CommandElements[$counter].Extent.StartOffset)
	}

	if ($wordToComplete.StartsWith('-')) {
		$completionResult = Invoke-Completer $completerName -Option -ArgumentList $wordToComplete, $commandAst, $cursorPosition
	} else {
		$completionResult = Invoke-Completer $completerName -Completer -ArgumentList $wordToComplete, $commandAst, $cursorPosition
	}

	$completionResult | Where-Object CompletionText -Like "$wordToCompleteSubstring*"
}

Register-NativeCommandArgumentCompleter 'docker-compose' $argumentCompleter

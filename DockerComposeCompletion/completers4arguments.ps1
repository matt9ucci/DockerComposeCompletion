$serviceAll = {
	Param($wordToComplete, $commandAst)

	$dcOptions = New-Object System.Collections.ArrayList
	foreach ($ce in $commandAst.CommandElements) {
		if ($ce.Extent.Text -in (Invoke-Completer 'docker-compose' -Completer).CompletionText) {
			break
		}
		$dcOptions.Add($ce.Extent.Text) > $null
	}
	Invoke-Expression -Command ("{0} config --services" -f ($dcOptions -join ' ')) | Sort-Object
}

$serviceRunning = {
	Param($wordToComplete, $commandAst)
	
	$dcOptions = New-Object System.Collections.ArrayList
	foreach ($ce in $commandAst.CommandElements) {
		if ($ce.Extent.Text -in (Invoke-Completer 'docker-compose' -Completer).CompletionText) {
			break
		}
		$dcOptions.Add($ce.Extent.Text) > $null
	}

	$serviceNames = New-Object System.Collections.ArrayList
	$serviceIds = Invoke-Expression -Command ("{0} ps -q" -f ($dcOptions -join ' '))
	$runningIds = docker container ls --filter status=running --quiet --no-trunc | Where-Object { $_ -in $serviceIds }
	foreach ($id in $runningIds) {
		$c = docker container inspect $id | ConvertFrom-Json
		$serviceNames.Add($c.Config.Labels.'com.docker.compose.service') > $null
	}
	$serviceNames | Sort-Object
}

$serviceNotRunning = {
	Param($wordToComplete, $commandAst)
	
	$dcOptions = New-Object System.Collections.ArrayList
	foreach ($ce in $commandAst.CommandElements) {
		if ($ce.Extent.Text -in (Invoke-Completer 'docker-compose' -Completer).CompletionText) {
			break
		}
		$dcOptions.Add($ce.Extent.Text) > $null
	}

	$serviceNames = New-Object System.Collections.ArrayList
	$runningIds = docker container ls --filter status=running --quiet --no-trunc
	$notRunningIds = Invoke-Expression -Command ("{0} ps -q" -f ($dcOptions -join ' ')) | Where-Object { $_ -notin $runningIds }
	foreach ($id in $notRunningIds) {
		$c = docker container inspect $id | ConvertFrom-Json
		$serviceNames.Add($c.Config.Labels.'com.docker.compose.service') > $null
	}
	$serviceNames | Sort-Object
}

$servicePaused = {
	Param($wordToComplete, $commandAst)
	
	$dcOptions = New-Object System.Collections.ArrayList
	foreach ($ce in $commandAst.CommandElements) {
		if ($ce.Extent.Text -in (Invoke-Completer 'docker-compose' -Completer).CompletionText) {
			break
		}
		$dcOptions.Add($ce.Extent.Text) > $null
	}

	$serviceNames = New-Object System.Collections.ArrayList
	$serviceIds = Invoke-Expression -Command ("{0} ps -q" -f ($dcOptions -join ' '))
	$pausedIds = docker container ls --filter status=paused --quiet --no-trunc | Where-Object { $_ -in $serviceIds }
	foreach ($id in $pausedIds) {
		$c = docker container inspect $id | ConvertFrom-Json
		$serviceNames.Add($c.Config.Labels.'com.docker.compose.service') > $null
	}
	$serviceNames | Sort-Object
}

Register-Completer 'docker-compose_build' $serviceAll
Register-Completer 'docker-compose_create' $serviceAll
Register-Completer 'docker-compose_down_--rmi' { 'all', 'local' }
Register-Completer 'docker-compose_events' $serviceAll
Register-Completer 'docker-compose_exec' $serviceRunning
Register-Completer 'docker-compose_help' (Get-Completer 'docker-compose')
Register-Completer 'docker-compose_images' $serviceAll
Register-Completer 'docker-compose_kill' $serviceRunning
Register-Completer 'docker-compose_kill_-s' {
	'SIGCONT'
	'SIGHUP'
	'SIGINT'
	'SIGKILL'
	'SIGSTOP'
	'SIGUSR1'
	'SIGUSR2'
}
Register-Completer 'docker-compose_logs' $serviceAll
Register-Completer 'docker-compose_pause' $serviceRunning
Register-Completer 'docker-compose_port' $serviceAll
Register-Completer 'docker-compose_port_--protocol' { 'tcp', 'udp' }
Register-Completer 'docker-compose_ps' $serviceAll
Register-Completer 'docker-compose_pull' $serviceAll
Register-Completer 'docker-compose_push' $serviceAll
Register-Completer 'docker-compose_restart' $serviceRunning
Register-Completer 'docker-compose_rm' $serviceAll
Register-Completer 'docker-compose_run' $serviceAll
Register-Completer 'docker-compose_scale' $serviceAll
Register-Completer 'docker-compose_start' $serviceNotRunning
Register-Completer 'docker-compose_stop' $serviceRunning
Register-Completer 'docker-compose_top' $serviceRunning
Register-Completer 'docker-compose_unpause' $servicePaused
Register-Completer 'docker-compose_up' $serviceAll
Register-Completer 'docker-compose_up_--exit-code-from' $serviceAll
Register-Completer 'docker-compose_up_--scale' $serviceAll

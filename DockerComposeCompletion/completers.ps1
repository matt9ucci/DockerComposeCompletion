# Docker Compose 1.28.0
Register-Completer docker-compose {
	COMPGEN build Command 'Build or rebuild services'
	COMPGEN config Command 'Validate and view the Compose file'
	COMPGEN create Command 'Create services'
	COMPGEN down Command 'Stop and remove resources'
	COMPGEN events Command 'Receive real time events from containers'
	COMPGEN exec Command 'Execute a command in a running container'
	COMPGEN help Command 'Get help on a command'
	COMPGEN images Command 'List images'
	COMPGEN kill Command 'Kill containers'
	COMPGEN logs Command 'View output from containers'
	COMPGEN pause Command 'Pause services'
	COMPGEN port Command 'Print the public port for a port binding'
	COMPGEN ps Command 'List containers'
	COMPGEN pull Command 'Pull service images'
	COMPGEN push Command 'Push service images'
	COMPGEN restart Command 'Restart services'
	COMPGEN rm Command 'Remove stopped containers'
	COMPGEN run Command 'Run a one-off command'
	COMPGEN scale Command 'Set number of containers for a service'
	COMPGEN start Command 'Start services'
	COMPGEN stop Command 'Stop services'
	COMPGEN top Command 'Display the running processes'
	COMPGEN unpause Command 'Unpause services'
	COMPGEN up Command 'Create and start containers'
	COMPGEN version Command 'Show version information and quit'
}

Register-Completer docker-compose -Option {
	COMPGEN --ansi string 'Control when to print ANSI control characters'
	COMPGEN --context string 'Specify a context name'
	COMPGEN '-c' string 'Specify a context name'
	COMPGEN --compatibility Switch 'If set, Compose will attempt to convert keys in v3 files to their non-Swarm equivalent (DEPRECATED)'
	COMPGEN --env-file string 'Specify an alternate environment file'
	COMPGEN --file string 'Specify an alternate compose file'
	COMPGEN '-f' string 'Specify an alternate compose file'
	COMPGEN --host string 'Daemon socket to connect to'
	COMPGEN '-H' string 'Daemon socket to connect to'
	COMPGEN --log-level string 'Set log level (DEBUG, INFO, WARNING, ERROR, CRITICAL)'
	COMPGEN --no-ansi Switch 'Do not print ANSI control characters (DEPRECATED)'
	COMPGEN --profile string 'Specify a profile to enable'
	COMPGEN --project-directory string 'Specify an alternate working directory'
	COMPGEN --project-name string 'Specify an alternate project name'
	COMPGEN '-p' string 'Specify an alternate project name'
	COMPGEN --skip-hostname-check Switch 'Don''t check the daemon''s hostname against the name specified in the client certificate'
	COMPGEN --tls Switch 'Use TLS; implied by --tlsverify'
	COMPGEN --tlscacert string 'Trust certs signed only by this CA'
	COMPGEN --tlscert string 'Path to TLS certificate file'
	COMPGEN --tlskey string 'Path to TLS key file'
	COMPGEN --tlsverify Switch 'Use TLS and verify the remote'
	COMPGEN --verbose Switch 'Show more output'
	COMPGEN --version string 'Print version and exit'
	COMPGEN '-v' string 'Print version and exit'
}

Register-Completer docker-compose_build -Option {
	COMPGEN --build-arg string 'Set build-time variables for services.'
	COMPGEN --compress Switch 'Compress the build context using gzip.'
	COMPGEN --force-rm Switch 'Always remove intermediate containers'
	COMPGEN --memory string 'Set memory limit for the build container'
	COMPGEN '-m' string 'Set memory limit for the build container'
	COMPGEN --no-cache Switch 'Do not use cache when building the image'
	COMPGEN --no-rm Switch 'Do not remove intermediate containers after a successful build.'
	COMPGEN --parallel Switch 'Build images in parallel.'
	COMPGEN --pull Switch 'Always attempt to pull a newer version of the image'
	COMPGEN --progress string 'Set type of progress output (auto, plain, tty).'
	COMPGEN --quiet string 'Don''t print anything to STDOUT'
	COMPGEN '-q' string 'Don''t print anything to STDOUT'
}

Register-Completer docker-compose_config -Option {
	COMPGEN --hash string 'Print the service config hash, one per line. Set "service1,service2" for a list of specified services or use the wildcard symbol to display all services.'
	COMPGEN --no-interpolate Switch 'Don''t interpolate environment variables.'
	COMPGEN --quiet Switch 'Only validate the configuration, don''t print anything'
	COMPGEN '-q' Switch 'Only validate the configuration, don''t print anything'
	COMPGEN --resolve-image-digests Switch 'Pin image tags to digests'
	COMPGEN --services Switch 'Print the service names, one per line'
	COMPGEN --volumes Switch 'Print the volume names, one per line'
}

Register-Completer docker-compose_create -Option {
	COMPGEN --build Switch 'Build images before creating containers'
	COMPGEN --force-recreate Switch 'Recreate containers even if their configuration and image haven''t changed. Incompatible with --no-recreate'
	COMPGEN --no-build Switch 'Don''t build an image, even if it''s missing'
	COMPGEN --no-recreate Switch 'If containers already exist, don''t recreate them. Incompatible with --force-recreate'
}

Register-Completer docker-compose_down -Option {
	COMPGEN --remove-orphans Switch 'Remove containers for services not defined in the Compose file'
	COMPGEN --rmi string 'Remove images. Type must be one of: ''all'': Remove all images used by any service. ''local'': Remove only images that don''t have a custom tag set by the `image` field.'
	COMPGEN --timeout string 'Specify a shutdown timeout in seconds.'
	COMPGEN '-t' string 'Specify a shutdown timeout in seconds.'
	COMPGEN --volumes Switch 'Remove named volumes declared in the `volumes` section of the Compose file and anonymous volumes attached to containers'
	COMPGEN '-v' Switch 'Remove named volumes declared in the `volumes` section of the Compose file and anonymous volumes attached to containers'
}

Register-Completer docker-compose_events -Option {
	COMPGEN --json Switch 'Output events as a stream of json objects'
}

Register-Completer docker-compose_exec -Option {
	COMPGEN --detach Switch 'Detached mode: Run command in the background.'
	COMPGEN '-d' Switch 'Detached mode: Run command in the background'
	COMPGEN --env string 'Set environment variables (can be used multiple times, not supported in API < 1.25)'
	COMPGEN '-e' string 'Set environment variables (can be used multiple times, not supported in API < 1.25)'
	COMPGEN --index string 'index of the container if there are multiple instances of a service [default: 1]'
	COMPGEN --privileged Switch 'Give extended privileges to the process'
	COMPGEN --user string 'Run the command as this user'
	COMPGEN '-u' string 'Run the command as this user'
	COMPGEN '-T' Switch 'Disable pseudo-tty allocation. By default `docker-compose exec` allocates a TTY.'
	COMPGEN --workdir string 'Path to workdir directory for this command.'
	COMPGEN '-w' string 'Path to workdir directory for this command.'
}

Register-Completer docker-compose_images -Option {
	COMPGEN --quiet Switch 'Only display IDs'
	COMPGEN '-q' Switch 'Only display IDs'
}

Register-Completer docker-compose_kill -Option {
	COMPGEN '-s' string 'SIGNAL to send to the container. Default signal is SIGKILL'
}

Register-Completer docker-compose_logs -Option {
	COMPGEN --follow Switch 'Follow log output'
	COMPGEN '-f' Switch 'Follow log output'
	COMPGEN --no-color Switch 'Produce monochrome output'
	COMPGEN --no-log-prefix Switch 'Don''t print prefix in logs.'
	COMPGEN --tail string 'Number of lines to show from the end of the logs for each container'
	COMPGEN --timestamps Switch 'Show timestamps'
	COMPGEN '-t' Switch 'Show timestamps'
}

Register-Completer docker-compose_port -Option {
	COMPGEN --index string 'index of the container if there are multiple instances of a service [default: 1]'
	COMPGEN --protocol string 'tcp or udp [default: tcp]'
}

Register-Completer docker-compose_ps -Option {
	COMPGEN --all Switch 'Show all stopped containers (including those created by the run command)'
	COMPGEN '-a' Switch 'Show all stopped containers (including those created by the run command)'
	COMPGEN --filter string 'Filter services by a property'
	COMPGEN --quiet Switch 'Only display IDs'
	COMPGEN '-q' Switch 'Only display IDs'
	COMPGEN --services Switch 'Display services'
}

Register-Completer docker-compose_pull -Option {
	COMPGEN --ignore-pull-failures Switch 'Pull what it can and ignores images with pull failures'
	COMPGEN --include-deps Switch 'Also pull services declared as dependencies'
	COMPGEN --no-parallel Switch 'Disable parallel pulling.'
	COMPGEN --parallel Switch 'Deprecated, pull multiple images in parallel (enabled by default).'
	COMPGEN --quiet Switch 'Pull without printing progress information'
	COMPGEN '-q' Switch 'Pull without printing progress information'
}

Register-Completer docker-compose_push -Option {
	COMPGEN --ignore-push-failures Switch 'Push what it can and ignores images with push failures'
}

Register-Completer docker-compose_restart -Option {
	COMPGEN --timeout string 'Specify a shutdown timeout in seconds'
	COMPGEN '-t' string 'Specify a shutdown timeout in seconds'
}

Register-Completer docker-compose_rm -Option {
	COMPGEN '-f' Switch 'Don''t ask to confirm removal'
	COMPGEN --force Switch 'Don''t ask to confirm removal'
	COMPGEN '-s' Switch 'Stop the containers, if required, before removing'
	COMPGEN --stop Switch 'Stop the containers, if required, before removing'
	COMPGEN '-v' Switch 'Remove any anonymous volumes attached to containers'
}

Register-Completer docker-compose_run -Option {
	COMPGEN --detach Switch 'Detached mode: Run container in the background, print new container name.'
	COMPGEN '-d' Switch 'Detached mode: Run container in the background, print new container name'
	COMPGEN '-e' string 'Set an environment variable (can be used multiple times)'
	COMPGEN --entrypoint string 'Override the entrypoint of the image'
	COMPGEN --label string 'Add or override a label (can be used multiple times)'
	COMPGEN '-l' string 'Add or override a label (can be used multiple times)'
	COMPGEN --name string 'Assign a name to the container'
	COMPGEN --no-deps Switch 'Don''t start linked services'
	COMPGEN --publish string 'Publish a container''s port(s) to the host'
	COMPGEN '-p' string 'Publish a container''s port(s) to the host'
	COMPGEN --rm Switch 'Remove container after run. Ignored in detached mode'
	COMPGEN --service-ports Switch 'Run command with the service''s ports enabled and mapped to the host'
	COMPGEN '-T' Switch 'Disable pseudo-tty allocation. By default `docker-compose run` allocates a TTY'
	COMPGEN --use-aliases Switch 'Use the service''s network aliases in the network(s) the container connects to.'
	COMPGEN --user string 'Run as specified username or uid'
	COMPGEN '-u' string 'Run as specified username or uid'
	COMPGEN --volume string 'Bind mount a volume (default [])'
	COMPGEN '-v' string 'Bind mount a volume (default [])'
	COMPGEN --workdir string 'Working directory inside the container'
	COMPGEN '-w' string 'Working directory inside the container'
}

Register-Completer docker-compose_scale -Option {
	COMPGEN --timeout string 'Specify a shutdown timeout in seconds'
	COMPGEN '-t' string 'Specify a shutdown timeout in seconds'
}

Register-Completer docker-compose_stop -Option {
	COMPGEN --timeout string 'Specify a shutdown timeout in seconds'
	COMPGEN '-t' string 'Specify a shutdown timeout in seconds'
}

Register-Completer docker-compose_up -Option {
	COMPGEN --always-recreate-deps Switch 'Recreate dependent containers. Incompatible with --no-recreate'
	COMPGEN --abort-on-container-exit Switch 'Stops all containers if any container was stopped. Incompatible with -d'
	COMPGEN --attach-dependencies Switch 'Attach to dependent containers.'
	COMPGEN --build Switch 'Build images before starting containers'
	COMPGEN --detach Switch 'Detached mode: Run containers in the background, print new container names. Incompatible with --abort-on-container-exit.'
	COMPGEN '-d' Switch 'Detached mode: Run containers in the background, print new container names. Incompatible with --abort-on-container-exit.'
	COMPGEN --exit-code-from string 'Return the exit code of the selected service container. Implies --abort-on-container-exit'
	COMPGEN --force-recreate Switch 'Recreate containers even if their configuration and image haven''t changed'
	COMPGEN --no-build Switch 'Don''t build an image, even if it''s missing'
	COMPGEN --no-color Switch 'Produce monochrome output'
	COMPGEN --no-deps Switch 'Don''t start linked services'
	COMPGEN --no-log-prefix Switch 'Don''t print prefix in logs.'
	COMPGEN --no-recreate Switch 'If containers already exist, don''t recreate them. Incompatible with --force-recreate and -V'
	COMPGEN --no-start Switch 'Don''t start the services after creating them.'
	COMPGEN --quiet-pull Switch 'Pull without printing progress information'
	COMPGEN --remove-orphans Switch 'Remove containers for services not defined in the Compose file'
	COMPGEN --renew-anon-volumes Switch 'Recreate anonymous volumes instead of retrieving data from the previous containers'
	COMPGEN '-V' Switch 'Recreate anonymous volumes instead of retrieving data from the previous containers'
	COMPGEN --scale string 'Scale SERVICE to NUM instances. Overrides the `scale` setting in the Compose file if present'
	COMPGEN --timeout string 'Use this timeout in seconds for container shutdown when attached or when containers are already running'
	COMPGEN '-t' string 'Use this timeout in seconds for container shutdown when attached or when containers are already running'
}

Register-Completer docker-compose_version -Option {
	COMPGEN --short Switch 'Shows only Compose''s version number'
}

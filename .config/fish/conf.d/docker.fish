if not type -q docker
  exit 0
end

set -l docker_ps_command 'docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.RunningFor}}\t{{.Names}}"'
abbr -ag dkps $docker_ps_command
abbr -ag dkpsa "$docker_ps_command -a"

abbr -ag dkl 'docker logs --tail=500 -f'

set -l dc_command 'docker compose'
abbr -ag dc $dc_command
abbr -ag dcd "$dc_command down"
abbr -ag dcu "$dc_command up"

abbr -ag dclf "$dc_command logs --tail=500 -f"

#
# ~/.config/fish/conf.d/docker.fish
#
# This file contains everything needed for Docker integration.
#

if not status is-interactive; or not command_exists docker
    exit 0
end

# Make 'docker ps' more readdable
set -l docker_ps 'docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.RunningFor}}\t{{.Names}}"'

# Abbreviations for docker (see https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker)
abbr -ag dkps $docker_ps
abbr -ag dkpsa "$docker_ps -a"
abbr -ag dkl 'docker logs --tail=500'
abbr -ag dklf 'docker logs --tail=500 -f'

# Abbreviations for docker-compose (see https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker-compose)
abbr -ag dc 'docker compose'
abbr -ag dcd 'docker compose down'
abbr -ag dcstart 'docker compose start'
abbr -ag dcstop 'docker compose stop'
abbr -ag dcu 'docker compose up'
abbr -ag dcl 'docker compose logs --tail=500'
abbr -ag dclf 'docker compose logs --tail=500 -f'

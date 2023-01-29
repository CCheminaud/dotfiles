if not status is-interactive
    exit 0
end

# Backup
abbr -ag bck backup

# Docker
if type -q docker
    set -l dkps_command 'docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"'

    abbr -ag dkps $dkps_command
    abbr -ag dkpsa "$dkps_command -a"
    abbr -ag dkl 'docker logs --tail=500 -f'
end

# Docker compose
if type -q docker-compose
    set -l dc_command 'docker-compose'

    abbr -ag dc $dc_command
    abbr -ag dcu "$dc_command up"
    abbr -ag dcd "$dc_command down"
    abbr -ag dclf "$dc_command logs --tail=500 -f"
end

# Lazydocker
# https://github.com/jesseduffield/lazydocker
if type -q lazydocker
    abbr -ag lzd 'lazydocker'
end

# Lazygit
# https://github.com/jesseduffield/lazygit
if type -q lazygit
    abbr -ag lzg 'lazygit'
end

# ls
if type -q ls
    abbr -ag ll 'ls -l'
    abbr -ag la 'ls -a'
end

# Make
if type -q 'make'
    abbr -ag m 'make'
end

# NPM
if type -q 'npm'
    abbr -ag npci 'npm ci'
    abbr -ag npi 'npm install'
    abbr -ag npr 'npm run'
    abbr -ag npv 'npm version'
end

# procs
if type -q procs
    abbr -ag ps 'procs -w --sortd cpu'
end

# Visual Studio Code
if type -q code
    abbr -ag c 'code -n'
end

# Yarn
if type -q yarn
    abbr -ag y 'yarn'
end

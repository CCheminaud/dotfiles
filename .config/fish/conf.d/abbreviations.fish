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

# Git (based on oh-my-zsh plugin)
# https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/git/git.plugin.zsh
if type -q git
    abbr -ag g 'git'
    abbr -ag ga 'git add'
    abbr -ag gaa 'git add --all'
    abbr -ag gb 'git branch'
    abbr -ag gbl 'git blame'
    abbr -ag gcf 'git commit --fixup'
    abbr -ag gcfh 'git commit --fixup HEAD'
    abbr -ag gco 'git checkout'
    abbr -ag gcm 'git commit -m'
    abbr -ag gcp 'git cherry-pick'
    abbr -ag gf 'git fetch'
    abbr -ag gfa 'git fetch --all'
    abbr -ag gl 'git pull'
    abbr -ag glr 'git pull --rebase'
    abbr -ag glo 'git log --date-order --graph --pretty=custom-oneline'
    abbr -ag glol 'git log --date-order --graph --pretty=custom-full'
    abbr -ag gm 'git merge --ff'
    abbr -ag gmc 'git merge --continue'
    abbr -ag gp 'git push'
    abbr -ag gpt 'git push --tags'
    abbr -ag gpu 'git push -u'
    abbr -ag grb 'git rebase'
    abbr -ag grbc 'git rebase --continue'
    abbr -ag grbi 'git rebase -i'
    abbr -ag gs 'git stash'
    abbr -ag gsp 'git stash pop'
    abbr -ag gst 'git status'
    abbr -ag gt 'git tag'
    abbr -ag gta 'git_create_annotated_tag'
    abbr -ag gtd 'git tag -d'
end

# htop
if type -q htop
    abbr -ag htop 'htop --delay=20'
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

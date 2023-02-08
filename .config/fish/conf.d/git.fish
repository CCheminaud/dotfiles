#
# ~/.config/fish/conf.d/git.fish
#
# This file contains everything needed for Git integration.
#

if not status is-interactive; or not is_available git
    exit 0
end

function __git_create_annotated_tag -d "Create a Git annotated tag" -a tag
    git tag -a $tag -m $tag
end

# Abbreviations (see https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/git)
abbr -ag g 'git'
abbr -ag ga 'git add'
abbr -ag gaa 'git add --all'
abbr -ag gb 'git branch'
abbr -ag gbl 'git blame'
abbr -ag gca 'git commit --amend'
abbr -ag gcf 'git commit --fixup'
abbr -ag gcfh 'git commit --fixup HEAD'
abbr -ag gcm 'git commit -m'
abbr -ag gco 'git checkout'
abbr -ag gcp 'git cherry-pick'
abbr -ag gcl 'git clone'
abbr -ag gf 'git fetch'
abbr -ag gfa 'git fetch --all'
abbr -ag glo 'git log --date-order --graph --pretty=custom-full'
abbr -ag glol 'git log --date-order --graph --pretty=custom-oneline'
abbr -ag gm 'git merge --ff'
abbr -ag gmc 'git merge --continue'
abbr -ag gl 'git pull'
abbr -ag glr 'git pull --rebase'
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
abbr -ag gta '__git_create_annotated_tag'
abbr -ag gtd 'git tag -d'

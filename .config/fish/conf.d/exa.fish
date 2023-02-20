#
# ~/.config/fish/conf.d/exa.fish
#
# This file contains everything needed for exa integration.
# See https://the.exa.website/docs/command-line-options.
#

if not status is-interactive; or not is_available exa
    exit 0
end

alias ls 'exa -1aHg'

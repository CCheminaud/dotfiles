#
# ~/.config/fish/conf.d/eza.fish
#
# This file contains everything needed for eza integration.
# See https://github.com/eza-community/eza.
#

if not status is-interactive; or not command_exists eza
    exit 0
end

alias ls 'eza -1aHg'

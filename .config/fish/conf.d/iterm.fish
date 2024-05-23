#
# ~/.config/fish/conf.d/iterm.fish
#
# This file contains everything needed for iTerm2 integration.
#

if not status is-interactive
    exit 0
end

test -e ~/.iterm2_shell_integration.fish ; and source ~/.iterm2_shell_integration.fish ; or true

#
# ~/.config/fish/conf.d/zoxide.fish
#
# This file contains everything needed for Zoxide integration.
# See https://github.com/ajeetdsouza/zoxide.
#

if not status is-interactive; or not command_exists zoxide
    exit 0
end

zoxide init fish --no-cmd | source

# Use 'z' for zoxide interactive
alias z '__zoxide_zi'

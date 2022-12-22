#
# ~/.config/fish/config.fish
#
# See https://fishshell.com/docs/current/language.html#configuration.
#

# Load private config if it exists
if [ -f ~/.config/fish/config.private.fish ]
    source ~/.config/fish/config.private.fish
end

# Fish title
function fish_title
    echo (basename $PWD)
end

# Set EDITOR
if type -q nvim
    set -gx EDITOR nvim
else if type -q vim
    set -gx EDITOR vim
end

# Set the default LESS options
set -x LESS '-R'

# Add folder(s) to PATH
fish_add_path ~/.local/bin

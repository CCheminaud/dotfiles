#
# ~/.config/fish/config.fish
#
# See https://fishshell.com/docs/current/language.html#configuration
#

# Load private config if it exists
if [ -f ~/.config/fish/config.private.fish ]
    source ~/.config/fish/config.private.fish
end

# Fish title
function fish_title
    echo (basename $PWD)
end

# Editor
if type -q nvim
    set -gx EDITOR nvim
else if type -q vim
    set -gx EDITOR vim
end

# Set the default Less options
set -x LESS '-R'

# Use NVM to load the right Node.js
# https://github.com/nvm-sh/nvm
load_nvm

# Load Starship prompt
starship init fish | source

# Add to the path
fish_add_path ~/.local/bin

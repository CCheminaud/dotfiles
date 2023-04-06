#
# ~/.config/fish/config.fish
#
# This is the main configuraton file for FishShell.
# See https://fishshell.com/docs/current/language.html#configuration.
#

# Load private config if it exists
if [ -f ~/.config/fish/config.private.fish ]
    source ~/.config/fish/config.private.fish
end

# Set terminal's title
function fish_title -d "Define the terminal’s title"
    echo (basename $PWD)
end

# Set welcome message
function fish_greeting -d "Display a welcome message in interactive shells"
    # Print message here
end

# Set EDITOR
if is_available nvim
    set -x EDITOR nvim
end

# Set the default LESS options
set -x LESS '-R'

#
# PATH configuration
#

fish_add_path ~/.local/bin
fish_add_path /usr/local/sbin # Homebrew

#
# Abbreviations
#

# bat (instead of cat)
if is_available bat
    abbr -ag cat 'bat'
end

# bottom (instead of top)
if is_available btm
    abbr -ag top 'btm'
end

# Lazydocker
if is_available lazydocker
    abbr -ag lzd 'lazydocker'
end

# Lazygit
if is_available lazygit
    abbr -ag lzg 'lazygit'
end

# ls
abbr -ag ll 'ls -l'
abbr -ag la 'ls -a'

# NeoVim
if is_available nvim
    abbr -ag vim 'nvim'
    abbr -ag vi 'nvim'
end

# Visual Studio Code
if is_available code
    abbr -ag c 'code -n'
end

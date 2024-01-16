#
# ~/.config/fish/config.fish
#
# This is the main configuraton file for FishShell.
# See https://fishshell.com/docs/current/language.html#configuration.
#

# Set terminal's title
function fish_title -d "Define the terminal’s title"
    echo (basename $PWD)
end

# Set welcome message
function fish_greeting -d "Display a welcome message in interactive shells"
    # Print message here
end

# Set current theme for syntax highlighting
fish_config theme choose "custom"

# Set EDITOR
if command_exists nvim
    set -x EDITOR nvim
end

# Set the default LESS options
set -x LESS '-R'

# Load private config if it exists
if [ -f ~/.config/fish/config.private.fish ]
    source ~/.config/fish/config.private.fish
end

#
# PATH configuration
#

fish_add_path ~/.local/bin
fish_add_path /usr/local/sbin # Homebrew

#
# Abbreviations
#

# bat (instead of cat)
if command_exists bat
    abbr -ag cat 'bat'
end

# bottom (instead of top)
if command_exists btm
    abbr -ag top 'btm'
end

# Lazydocker
if command_exists lazydocker
    abbr -ag lzd 'lazydocker'
end

# Lazygit
if command_exists lazygit
    abbr -ag lzg 'lazygit'
end

# ls
abbr -ag ll 'ls -l'
abbr -ag la 'ls -a'

# NeoVim
if command_exists nvim
    abbr -ag vim 'nvim'
    abbr -ag vi 'nvim'
end

# Visual Studio Code
if command_exists code
    abbr -ag c 'code -n'
end

# Others
abbr -ag cl 'clear'

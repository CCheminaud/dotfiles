#
# ~/.zshenv
#

# Set EDITOR
if type "nvim" > /dev/null; then
    export EDITOR=nvim
elif type "vim" > /dev/null; then
    export EDITOR=vim
fi

# Add folder(s) to PATH
export PATH="$HOME/.local/bin:$PATH"

# Remove duplicated entries from PATH
typeset -U PATH path

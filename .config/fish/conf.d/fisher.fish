#
# ~/.config/fish/conf.d/fisher.fish
#
# This file contains all stuff related to Fisher plugin manager.
# See https://github.com/jorgebucaran/fisher.
#

if not status is-interactive; or not command_exists fisher
    exit 0
end

# Set plugins installation path
set -U fisher_path ~/.config/fish/__plugins

# If installation path is not the default one, Fish will not be able to find the files.
# We need to indicate where plugin stuff is located (completions, functions...) and scripts must be loaded manually.
# See https://github.com/jorgebucaran/fisher/issues/640.

if set --query fisher_path
    set fish_complete_path $fish_complete_path[1] $fisher_path/completions $fish_complete_path[2..]
    set fish_function_path $fish_function_path[1] $fisher_path/functions $fish_function_path[2..]

    for file in $fisher_path/conf.d/*.fish
        source $file
    end
end

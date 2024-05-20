#
# ~/.config/fish/conf.d/starship.fish
#
# This file contains everything needed for Starship prompt integration.
# See https://starship.rs.
#

if not status is-interactive; or not command_exists starship
    exit 0
end

function starship_transient_prompt_func
    echo
    starship module character
end

function starship_transient_rprompt_func
    starship module time
end

starship init fish | source
enable_transience

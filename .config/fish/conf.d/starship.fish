#
# ~/.config/fish/conf.d/starship.fish
#
# This file contains everything needed for Starship prompt integration.
# See https://starship.rs.
#

if not status is-interactive; or not command_exists starship
    exit 0
end

starship init fish | source

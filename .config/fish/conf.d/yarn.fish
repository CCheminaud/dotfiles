#
# ~/.config/fish/conf.d/yarn.fish
#
# This file contains everything needed for Yarn integration.
#

if not status is-interactive; or not command_exists yarn
    exit 0
end

abbr -ag y 'yarn'

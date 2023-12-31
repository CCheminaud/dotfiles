#
# ~/.config/fish/conf.d/fisher.fish
#
# This file contains all stuff related to Fisher plugin manager.
# See https://github.com/jorgebucaran/fisher.
#

if not status is-interactive; or not command_exists fisher
    exit 0
end

# Set Fisher plugins installation path
set -U fisher_path ~/.config/fish/__plugins

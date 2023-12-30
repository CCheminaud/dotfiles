#
# ~/.config/fish/conf.d/yadm.fish
#
# This file contains everything needed for YADM integration.
#

if not status is-interactive; or not command_exists yadm
    exit 0
end

# Abbreviations (based on Git abbreviations)
abbr -ag yalo 'yadm log --date-order --graph --pretty=custom-full'
abbr -ag yalol 'yadm log --date-order --graph --pretty=custom-oneline'
abbr -ag yast 'yadm status'

#
# ~/.config/fish/conf.d/node.fish
#
# This file contains everything needed for Node.js integration.
#

if not status is-interactive; or not is_available node
    exit 0
end

# Abbreviations for NPM
abbr -ag npci 'npm ci'
abbr -ag npi 'npm install'
abbr -ag npr 'npm run'
abbr -ag npv 'npm version'

# Abbreviations for Yarn
if is_available yarn
    abbr -ag y 'yarn'
end

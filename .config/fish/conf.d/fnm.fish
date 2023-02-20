#
# ~/.config/fish/conf.d/fnm.fish
#
# This file contains everything needed for fnm integration.
# See https://github.com/Schniz/fnm.
#

if not status is-interactive; or not is_available fnm
    exit 0
end

# Resolving Node version browsing current directory and all parent directories
set -x FNM_VERSION_FILE_STRATEGY 'recursive'

fnm env --use-on-cd | source

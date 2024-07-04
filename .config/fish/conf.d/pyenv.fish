#
# ~/.config/fish/conf.d/pyenv.fish
#
# This file contains everything needed for pyenv integration.
# See https://github.com/pyenv/pyenv.
#

if not status is-interactive; or not command_exists pyenv
    exit 0
end

set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

pyenv init - | source

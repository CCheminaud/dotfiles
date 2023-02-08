#
# ~/.config/fish/conf.d/fnm.fish
#
# This file contains everything needed for fnm integration.
# See https://github.com/Schniz/fnm.
#

if not status is-interactive; or not is_available fnm
    exit 0
end

function __fnm_load_completions
    set -l completions (string split '\n' (fnm completions --shell fish))
    for i in (seq (count $completions))
        eval $completions[$i]
    end
end

# Load fnm
fnm env --use-on-cd | source

# Load completions
__fnm_load_completions

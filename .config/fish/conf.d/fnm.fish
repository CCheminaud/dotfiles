if not status is-interactive; not type -q fnm
    exit 0
end

function __fnm_load_completions
    set -l completions (string split '\n' (fnm completions --shell fish))
    for i in (seq (count $completions))
        eval $completions[$i]
    end
end

# Load FNM
fnm env --use-on-cd | source

# Load completions
__fnm_load_completions

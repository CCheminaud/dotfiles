if not status is-interactive; or not type -q zoxide
    exit 0
end

# Load zoxide
zoxide init fish --no-cmd | source

alias z '__zoxide_zi'

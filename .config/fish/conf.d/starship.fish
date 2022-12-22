if not type -q starship
  exit 0
end

# Load Starship prompt
starship init fish | source

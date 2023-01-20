#
# ~/Library/Application Support/nushell/env.nu
#
# See https://github.com/nushell/nushell/blob/main/crates/nu-utils/src/sample_config/default_env.nu.
#

# Add folder(s) to PATH
let-env PATH = ($env.PATH | split row (char esep) | prepend [
    '~/.local/bin',
    '/usr/local/bin'
])

# Setup script for loading Starship prompt
mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nu

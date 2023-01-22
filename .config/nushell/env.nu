#
# ~/.config/nushell/env.nu
#
# See https://github.com/nushell/nushell/blob/main/crates/nu-utils/src/sample_config/default_env.nu.
#

# Directories to search for scripts when calling source or use
#
# By default, <nushell-config-dir>/scripts is added
let-env NU_LIB_DIRS = [
    ($nu.config-path | path dirname | path join 'scripts')
]

# Directories to search for plugin binaries when calling register
#
# By default, <nushell-config-dir>/plugins is added
let-env NU_PLUGIN_DIRS = [
    ($nu.config-path | path dirname | path join 'plugins')
]

# Add folder(s) to PATH
let-env PATH = ($env.PATH | split row (char esep) | prepend [
    '~/.local/bin',
    '/usr/local/bin'
])

# If private config doesn't exist, create an empty file
let private_config_path = ($nu.config-path | path dirname | path join 'config.private.nu')
if not ($private_config_path | path exists) {
    touch $private_config_path
}

# Setup script for loading Starship prompt
mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nu

#
# ~/Library/Application Support/nushell/config.nu
#
# See https://github.com/nushell/nushell/blob/main/crates/nu-utils/src/sample_config/default_config.nu.
#

# Override Nushell configuration
let-env config = {
    # Disable the banner
    show_banner: false
}

# Load Starship prompt
source '~/.cache/starship/init.nu'

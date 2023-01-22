#
# ~/.config/nushell/config.nu
#
# See https://github.com/nushell/nushell/blob/main/crates/nu-utils/src/sample_config/default_config.nu.
#

# Override Nushell configuration
let-env config = {
    ls: {
        clickable_links: false
    },
    table: {
        mode: light
        index_mode: auto
    }
    show_banner: false
}

# Load Starship prompt
source '~/.cache/starship/init.nu'

# Load private config
use '../config.private.nu'

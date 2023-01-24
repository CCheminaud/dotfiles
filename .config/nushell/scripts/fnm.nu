# See https://github.com/Schniz/fnm/issues/463.

def contains_node_version_file [path: string] {
    let expected_files = [
        '.node-version'
        '.nvmrc'
    ]

    $expected_files | any {|it| $path | path join $it | path exists }
}

export-env {
    # Load environment variables
    fnm env --json | from json | load-env

    # Add dynamic fnm path
    let-env PATH = ($env.PATH | split row (char esep) | prepend ([$env.FNM_MULTISHELL_PATH "bin"] | path join))

    # Add hooks on change directory
    let-env config = ($env.config | upsert hooks {
        env_change: {
            PWD: [
                {
                    condition: {|before, after| contains_node_version_file $after }
                    code: {|before, after| fnm use --silent-if-unchanged }
                }
            ]
        }
    })
}

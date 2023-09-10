# dotfiles

These are all my dotfiles that I use everyday. Feel free to take what you want, but at your own risk.

It mainly target macOS system.

## Highlights

- Shell configuration for [Nushell](https://www.nushell.sh/), [Fish](https://fishshell.com/) and Zsh
- Fast and colored prompt with [Starship](https://starship.rs/)
- [Git](https://git-scm.com/) configuration, aliases...
- Vim ready for use (using [SpaceVim](https://spacevim.org/))
- Keeping the system up to date with [Topgrade](https://github.com/topgrade-rs/topgrade)
- Some system command alternatives ([bottom](https://github.com/ClementTsang/bottom), [eza](https://github.com/eza-community/eza))
- Everything is managed by [yadm](https://yadm.io/)

## Getting started

Clone this repository using `yadm`.

```
yadm clone https://github.com/CCheminaud/dotfiles.git
yadm status
```

The `clone` command will attempt to check out all files that exist in the repository.
If a file already exists locally and has content that differs from the one in the repository,
the local file will be left unmodified and you’ll have to review and resolve the differences.

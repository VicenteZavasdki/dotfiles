# dotfiles

My CachyOS + Sway development environment configuration.

[![Validate Dotfiles](https://github.com/VicenteZavasdki/dotfiles/actions/workflows/validate.yml/badge.svg)](https://github.com/VicenteZavasdki/dotfiles/actions/workflows/validate.yml)

## Stack

- **WM**: Sway (Wayland)
- **Terminal**: Ghostty
- **Shell**: Fish + bobthefish
- **Bar**: Waybar
- **Notifications**: Dunst
- **Multiplexer**: Zellij
- **Editor**: Neovim

## Tools

| Category | Tools |
|----------|-------|
| Navigation | zoxide, fzf |
| Listing | eza, fd, rg |
| Git | lazygit, delta |
| System | btop, fastfetch, duf |
| History | atuin |
| Clipboard | cliphist |

## Quick Install

```bash
git clone https://github.com/VicenteZavasdki/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

## Manual Install

```bash
ln -sf ~/.dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -sf ~/.dotfiles/ghostty/config ~/.config/ghostty/config
ln -sf ~/.dotfiles/sway/config ~/.config/sway/config
ln -sf ~/.dotfiles/waybar/config ~/.config/waybar/config
ln -sf ~/.dotfiles/waybar/style.css ~/.config/waybar/style.css
ln -sf ~/.dotfiles/git/config ~/.gitconfig
ln -sf ~/.dotfiles/dunst/dunstrc ~/.config/dunst/dunstrc
ln -sf ~/.dotfiles/zellij/config.kdl ~/.config/zellij/config.kdl
ln -sf ~/.dotfiles/atuin/config.toml ~/.config/atuin/config.toml
ln -sf ~/.dotfiles/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/.dotfiles/.editorconfig ~/.editorconfig
```

## Theme

- **Colors**: Catppuccin Mocha (terminal) + Dracula (fish prompt)
- **Font**: JetBrains Mono
- **WM**: No borders, minimal gaps

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License

MIT

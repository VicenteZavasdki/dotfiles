#!/bin/bash
# Dotfiles Installer - Zavasdki Setup
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "🔧 Installing Zavasdki dotfiles..."

# Create symlinks
ln -sf "$DOTFILES_DIR/fish/config.fish" ~/.config/fish/config.fish
ln -sf "$DOTFILES_DIR/ghostty/config" ~/.config/ghostty/config
ln -sf "$DOTFILES_DIR/sway/config" ~/.config/sway/config
ln -sf "$DOTFILES_DIR/waybar/config" ~/.config/waybar/config
ln -sf "$DOTFILES_DIR/waybar/style.css" ~/.config/waybar/style.css
ln -sf "$DOTFILES_DIR/git/config" ~/.gitconfig
ln -sf "$DOTFILES_DIR/dunst/dunstrc" ~/.config/dunst/dunstrc
ln -sf "$DOTFILES_DIR/zellij/config.kdl" ~/.config/zellij/config.kdl
ln -sf "$DOTFILES_DIR/atuin/config.toml" ~/.config/atuin/config.toml
ln -sf "$DOTFILES_DIR/nvim/init.lua" ~/.config/nvim/init.lua
ln -sf "$DOTFILES_DIR/.editorconfig" ~/.editorconfig

echo "✅ Dotfiles installed!"
echo "🔄 Restart your session to apply changes."

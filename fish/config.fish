# Fish Configuration - Zavasdki Setup

# === Paths ===
fish_add_path $HOME/.bun/bin
fish_add_path $HOME/.npm-global/bin
fish_add_path $HOME/.local/bin

# === Zoxide Init ===
zoxide init fish | source

# === Atuin Init ===
atuin init fish | source

# === Bobthefish Theme Configuration ===
set -g theme_color_scheme dracula
set -g fish_prompt_char '❯'
set -g theme_display_vi_mode yes
set -g theme_show_git_anchor yes
set -g theme_git_workbench_support yes

# === FZF ===
set -g FZF_LEGACY_KEYS 1
set -g FZF_PREVIEW_SIDE left

# === History ===
set -g fish_history_pager 'fzf'

# === Aliases ===
# Listing
alias ll 'eza -la --icons'
alias la 'eza -la --icons --all'
alias lt 'eza --tree --level=2'
alias laa 'eza -la --icons --all --git'
alias duf 'duf --hide special'

# Utils
alias cat 'bat --style=auto'
alias grep 'rg'
alias find 'fd'
alias open 'xdg-open'
alias tldr 'tealdeer'
alias http 'httpie'

# System
alias lg 'lazygit'
alias bt 'btop'
alias ff 'fastfetch'

# Git
alias g 'git'
alias ga 'git add'
alias gc 'git commit -m'
alias gco 'git checkout'
alias gs 'git status'
alias gl 'git log --oneline -10'
alias gd 'git diff'
alias gp 'git push'
alias gpl 'git pull'
alias gb 'git branch'
alias gst 'git stash'
alias gsp 'git stash pop'
alias dt 'delta'
alias gaa 'git add --all'
alias gcm 'git commit -m'
alias gcan 'git commit --amend --no-edit'

# Node/Bun/npm
alias b 'bun'
alias ni 'npm install'
alias nil 'npm install -g'
alias nr 'npm run'
alias nd 'npm run dev'
alias nb 'npm run build'
alias ns 'npm start'
alias yt 'yarn'
alias yta 'yarn add'
alias ytr 'yarn run'

# Rust/Cargo
alias cr 'cargo run'
alias cb 'cargo build'
alias ct 'cargo test'
alias cw 'cargo watch'
alias c 'cargo'

# Python
alias py 'python'
alias pyv 'python -m venv'
alias pya 'python -m pip install -r requirements.txt'

# General Dev
alias d 'cd $HOME/Desktop'
alias w 'cd $HOME/workspace'
alias dev 'cd $HOME/workspace && ls'
alias .. 'cd ..'
alias ... 'cd ../..'
alias which 'type -a'

# === Functions ===

# Execute bash scripts in fish
function bash
    command bash $argv
end

# Quick cd to frequent directories
function qcd
    cd (zoxide query $argv)
end

# fzf git checkout
function gcof
    git checkout (git branch | fzf | tr -d ' ')
end

# fzf git stash
function gsf
    git stash pop (git stash list | fzf | awk -F: '{print $1}')
end

# Clipboard history with cliphist
function cliphist
    command cliphist $argv
end

# === Editor ===
set -g EDITOR 'code'
set -g VISUAL 'code'

# === Locale ===
set -gx LANG pt_PT.UTF-8
set -gx LC_ALL pt_PT.UTF-8

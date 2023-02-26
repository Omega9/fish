# ░░░░░░░░░▒▓▓██████▓▓▒░░░░░░░░░
# ░░░░░░▓████████████████▓▒░░░░░
# ░░░░▓████████████████████▓▒░░░
# ░░▒███████▓▒░░░░░░▒▓███████▓░░
# ░▒██████▓░░░░░░░░░░░░▒██████▓░
# ░██████░░░░░░░░░░░░░░░░▓█████▒
# ▓█████▒░░░░░░▓██▓▒░░░░░░█████▓
# ██████░░░░░░▓█████░░░░░░▓█████
# ▓█████░░░░░░▒▓███▒░░░░░░█████▓
# ▒█████▓░░░░░░░░░░░░░░░░▓█████▒
# ░▒██████▒░░░░░░░░░░░░░▓█████▓░
# ░░▒███████▓▒░░░░░░░░▒██████▓░░
# ████████████▒░░░░░░▒██████████
# ███████████▒░░░░░░▓███████████
# █████████▓░░░░░░░▓████████████
# Eoin Gairleog aka Omega9
# https://omega9.web.app/
# My fish config.

# Set PATH
set -x GOROOT (go env GOROOT)
set -x GOPATH $HOME/src/go
set -x GOBIN $GOROOT/bin
set -x GOTOOLS $GOROOT/pkg/tool/
set -x PNPM_HOME $HOME/.local/share/pnpm
set -x PATH $PATH $HOME/Applications $HOME/.local/bin $GOROOT/bin $GOPATH/bin $HOME/.local/share/gem/ruby/3.0.0/bin $PNPM_HOME

## Audio plugins
set -x VST_PATH /usr/lib/vst /usr/local/lib/vst $HOME/.vst
set -x LXVST_PATH /usr/lib/lxvst /usr/local/lib/lxvst $HOME/.lxvst
set -x LADSPA_PATH /usr/lib/ladspa /usr/local/lib/ladspa $HOME/.ladspa
set -x LV2_PATH /usr/lib/lv2 /usr/local/lib/lv2 $HOME/.lv2
set -x DSSI_PATH /usr/lib/dssi /usr/local/lib/dssi $HOME/.dssi

# Export
set -gx EDITOR micro
set -gx BROWSER brave
set --export GIT_EDITOR micro

# Bookmarks directory for to-fish
# set -U TO_DIR $HOME/.tofish

# BobTheFish settings
set -g theme_powerline_fonts yes
set -g theme_color_scheme nord

# Another Nord theme for fish
# source "$HOME/.config/fish/nord.fish"

# Nord color theme for fzf
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
    --color=fg:#e5e9f0,bg:#3b4252,hl:#81a1c1
    --color=fg+:#e5e9f0,bg+:#3b4252,hl+:#81a1c1
    --color=info:#eacb8a,prompt:#bf6069,pointer:#b48dac
    --color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b'

# Done settings
set -U __done_min_cmd_duration 20000
set -U __done_exclude 'git (?!push|pull)'  # default: all git commands, except push and pull. accepts a regex.
set -U __done_notify_sound 0
set -U __done_notification_urgency_level low
set -U __done_notification_urgency_level_failure normal

# Abbreviations
source "$HOME/.config/fish/functions_and_abbreviations.fish"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting -d "Lasita-a diri saluton"
    set_color $fish_color_autosuggestion
    # echo "Я полностью работоспособен и все мои цепи функционируют идеально."
    ddate | pokemonsay -N
    # ddate | ponysay -c
    set_color normal
end

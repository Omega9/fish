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

# BobTheFish settings
set -g theme_powerline_fonts yes
set -g theme_color_scheme nord

# Abbreviations
source "$HOME/.config/fish/functions_and_abbreviations.fish"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting -d "Поздороваемся"
    set_color $fish_color_autosuggestion
    # echo "Я полностью работоспособен и все мои цепи функционируют идеально."
    ddate | pokemonsay -N
    set_color normal
end
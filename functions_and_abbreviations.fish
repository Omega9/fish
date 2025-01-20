#####################
#####################
##### Functions #####
#####################
#####################

############
### Help ###
############

## Terminal Shortcuts
# https://itsfoss.com/linux-terminal-shortcuts/
function t-h --description 'Terminal Shortcuts'
    echo -n "Terminal Shortcuts
    ‣ Ctrl + A	        Move to the start of the line.
    ‣ Ctrl + E	        Move to the end of the line.
    ‣ Ctrl + U	        Delete from the cursor to the start of the line.
    ‣ Ctrl + K	        Delete from the cursor to the end of the line.
    ‣ Ctrl + W	        Delete the word before the cursor.
    ‣ Ctrl + L	        Clear the terminal screen.
    ‣ Ctrl + C	        Stop the current process/command.
    ‣ Ctrl + D	        Log out or exit the terminal.
    ‣ Ctrl + Z          Pause the current process (can be resumed).
    ‣ Ctrl + R          Search command history (backward search).
    ‣ Up Arrow          Show the previous command (from the command history).
    ‣ Down Arrow        Show the next command (from the command history).
    ‣ !!                Repeat the last command.
    ‣ !n                Repeat the nth command from history.
    ‣ Tab               Auto-complete commands, files, or directories.
    ‣ Tab twice         List all possible completions.
    ‣ Ctrl + Shift + C  Copy the selected text or command.
    ‣ Ctrl + Shift + V  Paste copied text or command.
    ‣ Ctrl + Shift + N  Open a new terminal window.
    ‣ Ctrl + Shift + T  Open a new tab in the terminal.
    ‣ Ctrl + Tab        Switch between terminal tabs.
    ‣ Ctrl + PageDown   Switch between terminal tabs.
    " | lolcat
end

## Pacman & Aura help
function p-h --description 'Pacman functions'
    echo -n "Pacman functions
    ‣ p-i       Install
    ‣ p-u       Update
    ‣ p-s       Search
    ‣ p-rdd     Remove package without dependencies
    ‣ p-r       Remove
    ‣ p-p       Purge (rm pkgs no longer included in any repos)
    ‣ p-ac      Autoclean (clean up all local caches)
    ‣ p-ai      Info
    ‣ p-ar      Autoremove (rm deps no longer needed)
    ‣ p-c       Clean
    ‣ p-unlock  Unlock Pacman
    " | lolcat
end

function y-h --description 'Yay functions'
    echo -n "Yay functions

    ‣ y-i   Install
    ‣ y-u   Upgrade
    ‣ y-r   Remove
    ‣ y-ai  Info
    ‣ y-s   Search
    ‣ y-pb  Display PKGBUILD
    " | lolcat
end

function a-h --description 'Aura functions'
    echo -n "Aura functions
    ‣ a-b   Store a JSON record of all installed packages
    ‣ a-br  Restore a saved record. Rolls back and uninstalls as necessary
    ‣ a-bc  Delete all but the most recent n saved states
    ‣ a-bl  Show all saved package state filenames

    ‣ a-c   Downgrade a package
    ‣ a-cs  Search the cache for files that match a regex
    ‣ a-cc  Delete all but recent n versions of each cached package
    ‣ a-cv  Delete cache

    ‣ a-o   Display orphan packages
    ‣ a-oa  Change install reason to Explicitly installed
    ‣ a-oj  Uninstall all orphan packages

    ‣ a-i   Install
    ‣ a-u   Upgrade
    ‣ a-ai  Info
    ‣ a-s   Search
    ‣ a-pb  Display PKGBUILD
    ‣ a-d   List dependencies
    " | lolcat
end

##########################
### Package Management ###
##########################

# Topgrade with less questions
function tg --wraps='sudo pacman -S' --description 'Topgrade with less questions'
    topgrade --disable node;
end

## Pacman (just pacman)
function p-i --wraps='sudo pacman -S' --description 'Install (pacman -S)'
    sudo pacman -S $argv;
end

function p-u --wraps='sudo pacman -Syu' --description 'Update (pacman -Syu)'
    sudo pacman -Syu $argv;
end

function p-s --wraps='pacman -Ss' --description 'Search (pacman -Ss)'
    pacman -Ss $argv;
end

function p-rdd --wraps='sudo pacman -Rdd ' --description 'Remove package without dependencies (pacman -Rdd)'
    sudo pacman -Rdd $argv;
end

function p-r --wraps='sudo pacman -Rs' --description 'Remove (pacman -Rs)'
    sudo pacman -Rs $argv;
end

function p-p --wraps='sudo pacman -Qmq | pacman -Rs -' --description 'Purge (rm pkgs no longer included in any repos)'
    sudo pacman -Qmq | pacman -Rs - $argv;
end

function p-ac --wraps='sudo pacman -Sc' --description 'Autoclean (clean up all local caches)'
    sudo pacman -Sc $argv;
end

function p-ai --wraps='pacman -Si' --description 'Info (pacman -Si)'
    pacman -Si $argv;
end

function p-ar --wraps='sudo pacman -Qdtq | pacman -Rs –' --description 'Autoremove (rm deps no longer needed)'
    sudo pacman -Qdtq | sudo pacman -Rs – $argv;
end

function p-c --wraps='sudo pacman -Scc' --description 'Clean (pacman -Scc)'
    sudo pacman -Scc $argv;
end

function p-unlock --wraps='sudo rm /var/lib/pacman/db.lck' --description 'Unlock Pacman'
    sudo rm /var/lib/pacman/db.lck $argv;
end

## Aura - Pacman commands
# function p-i --wraps='doas aura -S' --description 'Install (aura -S)'
#     doas aura -S $argv;
# end

# function p-u --wraps='doas aura -Syu' --description 'Update (aura -Syu)'
#     doas aura -Syu $argv;
# end

# function p-s --wraps='aura -Ss' --description 'Search (aura -Ss)'
#     aura -Ss $argv;
# end

# function p-rdd --wraps='doas aura -Rdd ' --description 'Remove package without dependencies (aura -Rdd)'
#     doas aura -Rdd $argv;
# end

# function p-r --wraps='doas aura -Rs' --description 'Remove (aura -Rs)'
#     doas aura -Rs $argv;
# end

# function p-p --wraps='doas aura -Qmq | aura -Rs -' --description 'Purge (rm pkgs no longer included in any repos)'
#     doas aura -Qmq | aura -Rs - $argv;
# end

# function p-ac --wraps='doas aura -Sc' --description 'Autoclean (clean up all local caches)'
#     doas aura -Sc $argv;
# end

# function p-ai --wraps='aura -Si' --description 'Info (aura -Si)'
#     aura -Si $argv;
# end

# function p-ar --wraps='doas aura -Qdtq | aura -Rs –' --description 'Autoremove (rm deps no longer needed)'
#     doas aura -Qdtq | doas aura -Rs – $argv;
# end

# function p-c --wraps='sudo aura -Scc' --description 'Clean (aura -Scc)'
#     doas aura -Scc $argv;
# end

# function p-unlock --wraps='sudo rm /var/lib/pacman/db.lck' --description 'Unlock Pacman'
#     sudo rm /var/lib/pacman/db.lck $argv;
# end

# Aura - Installing Packages
function a-i --wraps='sudo aura -A' --description 'Install (aura -A)'
    aura -A $argv;
end

function a-u --wraps='sudo aura -Au' --description 'Upgrade (aura -Au)'
    aura -Au
end

function a-ai --wraps='sudo aura -Ai' --description 'Info (aura -Ai)'
    aura -Ai $argv;
end

function a-s --wraps='sudo aura -As' --description 'Search (aura -As)'
    aura -As $argv;
end

function a-pb --wraps='sudo aura -Ap' --description 'Display PKGBUILD (aura -Ap)'
    aura -Ap $argv;
end

function a-d --wraps='sudo aura -Ad' --description 'List dependencies (aura -Ad)'
    aura -Ad $argv;
end

# Aura - Package Set Snapshots
function a-b --wraps='sudo aura -B' --description 'Store a JSON record of all installed packages (aura -B)'
    aura -B
end

function a-br --wraps='sudo aura -Br' --description 'Restore a saved record. Rolls back and uninstalls as necessary (aura -Br)'
    aura -Br
end

function a-bc --wraps='sudo aura -Bc' --description 'Delete all but the most recent n saved states (aura -Bc)'
    aura -Bc $argv;
end

function a-bl --wraps='aura -Bl' --description 'Show all saved package state filenames (aura -Bl)'
    aura -Bl
end

# Aura - Downgrading via the Package Cache
function a-c --wraps='sudo aura -C' --description 'Downgrade a package (aura -C)'
    aura -C $argv;
end

function a-cs --wraps='sudo aura -Cs' --description 'Search the cache for files that match a regex (aura -Cs)'
    aura -Cs $argv;
end

function a-cc --wraps='sudo aura -Cc' --description 'Delete all but recent n versions of each cached package (aura -Cc)'
    aura -Cc $argv;
end

function a-cv --wraps='sudo aura -Cv' --description 'Delete cache (aura -Cv)'
    aura -Cv
end

# Aura - Managing Orphan Packages
function a-o --wraps='aura -O' --description 'Display orphan packages (aura -O)'
    aura -O
end

function a-oa --wraps='sudo aura -Oa' --description 'Change install reason to Explicitly installed (aura -Oa)'
    sudo aura -Oa $argv;
end

function a-oj --wraps='sudo aura -Oj' --description 'Uninstall all orphan packages (aura -Oj)'
    sudo aura -Oj
end

# Yay
function y-i --wraps='yay -S' --description 'Install (yay -S)'
    yay -S $argv;
end

function y-u --wraps='yay -Syu' --description 'Upgrade (yay -Syu)'
    yay -Syu
end

function y-r --wraps='yay -Rns' --description 'Remove (yay -Rns)'
    yay -Rns $argv;
end

function y-ai --wraps='yay -Si' --description 'Info (yay -Si)'
    yay -Si $argv;
end

function y-s --wraps='yay -Ss' --description 'Search (yay -Ss)'
    yay -Ss $argv;
end

function y-pb --wraps='yay -Gp' --description 'Display PKGBUILD (yay -Gp)'
    yay -Gp $argv;
end

##########
## Var ###
##########

# Eza
function ls --wraps='eza --long --header --classify --icons' --description 'ls'
    eza --long --header --classify --icons $argv;
end

function tree --wraps='eza --tree --level=2 --long --header --classify --icons' --description 'Tree'
    eza --tree --level=2 --long --header --classify --icons $argv;
end

# Tere
function tere
    set --local result (command tere $argv)
    [ -n "$result" ] && cd -- "$result"
end

# fd
function find --description 'Find with fd'
    command fd -H $argv;
end

# grep
# function grep --description 'Color grep'
#    command grep --color=auto $argv;
# end

# ripgrep
function grep --description 'Color grep'
    command rg --color=auto $argv;
end

function du --description 'Count space'
    command du -h $argv;
end

function df --description 'alias df df -h'
    command df -h $argv;
end

# Micro
function edit --wraps='micro' --description 'Edit file'
    micro $argv;
end

# Bat
function cat --wraps='bat' --description 'A cat(1) clone with wings'
    bat $argv;
end

# Delta
function diff --wraps='delta' --description 'A viewer for git and diff output'
    delta $argv;
end

# Htop
function top --wraps='sudo htop' --description 'Htop'
    sudo htop $argv;
end

# "command not found"
function fish_command_not_found
    __fish_default_command_not_found_handler $argv[1]
end

# Bash
function b --description "Exec command in bash. Useful when copy-pasting commands with incompatible syntax to fish "
    bash -c "$argv"
end

# Root privileges
function doas --description 'doas'
    command doas -- $argv;
end

# function sudo --description 'sudo (doas)'
#     command doas $argv;
# end

function sudoedit --description 'sudoedit (doas)'
    command doas micro $argv;
end

# Confirm before overwriting something
function rm --description 'rm safely'
    command rm -i $argv;
end

function mv --description 'mv safely'
    command mv -i $argv;
end

function cp --description 'cp safely'
    command cp -i --preserve=timestamps $argv;
end

# Trash bin
function rmrf --description 'move to trash recursively'
    kioclient mv (echo (readlink -e $argv)) trash:/
end

function emptytrash --wraps='ktrash6 --empty' --description 'Empty trash bin'
    ktrash6 --empty
    and echo "Trash bin is empty"
end

function mkcd --description "Create and cd to directory"
    mkdir $argv
    and cd $argv
end

# Copy full file path
function copypath --description "Copy full file path"
    switch (echo $XDG_SESSION_TYPE)
        case x11
            readlink -e . | xclip -sel clip
            echo "copied to clipboard"
        case wayland
            readlink -e . | wl-copy
            echo "copied to clipboard"
    end
end

## Copy full file path - Xorg
# function copypath --description "Copy full file path"
#     readlink -e . | xclip -sel clip
#     echo "copied to clipboard"
# end

## Copy full file path - Wayland
# function copypath --description "Copy full file path"
#     readlink -e . | wl-copy
#     echo "copied to clipboard"
# end

# Touch run.sh
function mkshellscript --description 'Make run.sh'
    echo "#!/bin/sh" > run.sh
    chmod +x run.sh
end

# Backup file
function backup --argument filename --description 'Backup file'
    cp $filename $filename.bak
end

# Compress git repo
function gitprune --description 'Compress git repo'
    git gc --aggressive --prune=now
end

# Get error messages from journalctl
function jctl --wraps='journalctl -p 3 -xb' --description 'Get error messages from journalctl'
    journalctl -p 3 -xb $argv;
end

function !! --description "Run the last command"
    if test (count $argv) -ge 1
        set cmd $history[1]" $argv"
    else
        set cmd $history[1]
    end
    eval $cmd
end

function run --description "Make file executable, then run it"
    chmod +x "$argv"
    eval "./$argv"
end

function launch --description "Launch program"
    eval "$argv >/dev/null 2>&1 &" & disown
end

## Copypaste
function pbcopy --description "Copy data from STDIN to the clipboard"
    switch (echo $XDG_SESSION_TYPE)
        case x11
            xclip -selection clipboard
        case wayland
            wl-copy $argv
    end
end

function pbpaste  --description "Paste data from the Clipboard"
    switch (echo $XDG_SESSION_TYPE)
        case x11
            xclip -selection clipboard -o
        case wayland
            wl-paste
    end
end

## Copypaste - Xorg
# function pbcopy --description "Copy data from STDIN to the clipboard"
#     xclip -selection clipboard
# end

# function pbpaste  --description "Paste data from the Clipboard"
#     xclip -selection clipboard -o
# end

## Copypaste - Wayland
# function pbcopy --description "Copy data from STDIN to the clipboard"
#     wl-copy $argv
# end

# function pbpaste  --description "Paste data from the Clipboard"
#     wl-paste
# end

# Generate password
function generate_password
    head /dev/urandom | tr -dc \[:graph:\] | head -c 30 && echo
end

# By https://gist.github.com/ttscoff
function docx2md --description "Convert docx to markdown: docx2md [source] [target]"
    pandoc -o "$2" --extract-media=(dirname "$argv[2]") "$argv[1]"
end

# By https://gist.github.com/ttscoff
function findgist --description 'Select gist from list and display contents'
    # requires fzf (brew install fzf) and gist (brew install gist)
    gist -r (gist -l | awk -F/ '{print $NF}' | fzf --layout="reverse" -q "$argv" | awk '{ print $1 }')
end

# Prepend `sudo` to `nano` command if file is not editable by current user
# Warn if file does no exist
function nano
    if not test -e "$argv"
        read -p "echo 'File $argv does not exist. Ctrl+C to cancel'" -l confirm
        touch "$argv" 2>/dev/null
    end

    if test -w "$argv"
        /bin/nano -mui $argv
    else
        echo "Editing $argv requires root permission"
        sudo /bin/nano -mui $argv
    end
end

## Untar
# function untar --wraps='tar -zxvf ' --description 'Untar'
#    tar -zxvf  $argv;
# end

# CPU Scaling governors for realtime audio
# https://wiki.archlinux.org/title/CPU_frequency_scaling#Scaling_governors
function cpugov-performance --wraps='sudo cpupower frequency-set -g performance' --description 'Run the CPU at the maximum frequency'
    sudo cpupower frequency-set -g performance
end

function cpugov-ondemand --wraps='sudo cpupower frequency-set -g ondemand' --description 'Scales the frequency dynamically'
    sudo cpupower frequency-set -g ondemand
end

function cpugov-schedutil --wraps='sudo cpupower frequency-set -g schedutil' --description 'Scheduler-driven CPU frequency selection'
    sudo cpupower frequency-set -g schedutil
end

# FFmpeg
function ffc --description 'Convert anything with FFmpeg'
    ffmpeg -i $argv[1] -y $argv[1].$argv[2]
end

# ImageMagick
function imc --description 'Convert anything with ImageMagick'
    # magick $argv[1] $argv[1].$argv[2]
    convert $argv[1] $argv[1].$argv[2]
end

# Ascii-image-converter
# https://github.com/TheZoraiz/ascii-image-converter
function image-to-ascii --description 'Convert image to ASCII-art'
    ascii-image-converter $argv  -f -C -s .
end

function image-to-braille --description 'Convert image to Braille-art'
    ascii-image-converter $argv  -f -C -b -s .
end

# The most useful function
function rickroll --description 'the terminal rickroll'
    curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash
end

###############
### Network ###
###############

function myip --description 'What is my IP?'
    curl ifconfig.co
end

function whatismyip --description 'What is my IP?'
    curl ifconfig.co
end

function localip --description 'What is my local IP?'
    ip -o route get to 1.1.1.1 | sed -n 's/.*src \([0-9.]\+\).*/\1/p'
end

function interfaces
    ip address | grep -P --only-matching "(\d: \w+)|(state \w+)|(link/\w+ [a-f0-9:]+)|(inet [0-9.]+)"
end

function wget --description 'Download with Wget'
    command wget -c $argv;
end

function wgetb --description 'Batch download with Wget'
    command wget -c -i $argv;
end

function wgets --description 'Download website with Wget'
    command wget --mirror --convert-links --adjust-extension --page-requisites --no-parent $argv;
end

function ping --description 'Ping'
    command ping -c 5 $argv;
end

function www --wraps='python -m SimpleHTTPServer 8000' --description 'Simple web-server'
    python -m SimpleHTTPServer 8000;
end

function qrencode
    printf $argv | curl '-F-=<-' http://qrenco.de
end

function weather --description "Show weather"
    # resize -s $LINES 125
    curl wttr.in/$argv
end

function погода --description "Погода в Уфе"
    curl wttr.in/Ufa+Russia
end

function transfer --description "Upload file to transfer.sh"
    curl --progress-bar --upload-file $argv https://transfer.sh/(basename $argv)
end

function showgit --description "Show git origin"
    open (git remote get-url origin)
end

#####################
### Abbreviations ###
#####################

# Yt-dlp extract
abbr yta-aac 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format aac'
abbr yta-best 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format best'
abbr yta-flac 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format flac'
abbr yta-m4a 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format m4a'
abbr yta-mp3 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format mp3'
abbr yta-opus 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format opus'
abbr yta-vorbis 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format vorbis'
abbr yta-wav 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format wav'
abbr ytv-best 'yt-dlp --cookies-from-browser vivaldi -f bestvideo+bestaudio'

# Torified Yt-dlp extract
abbr tyta-aac 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format aac'
abbr tyta-best 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format best'
abbr tyta-flac 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format flac'
abbr tyta-m4a 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format m4a'
abbr tyta-mp3 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format mp3'
abbr tyta-opus 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format opus'
abbr tyta-vorbis 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format vorbis'
abbr tyta-wav 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format wav'
abbr tytv-best 'torify yt-dlp --cookies-from-browser vivaldi -f bestvideo+bestaudio'

# Yt-dlp
abbr ydl 'yt-dlp --cookies-from-browser vivaldi'
abbr ydlb 'yt-dlp --cookies-from-browser vivaldi -a'
abbr tydl 'torify yt-dlp --cookies-from-browser vivaldi'
abbr tydlb 'torify yt-dlp --cookies-from-browser vivaldi -a'

# Gallery-dl
abbr gdl 'gallery-dl --cookies-from-browser vivaldi'
abbr gdlb 'gallery-dl --cookies-from-browser vivaldi -i'
abbr tgdl 'torify gallery-dl --cookies-from-browser vivaldi'
abbr tgdlb 'torify gallery-dl --cookies-from-browser vivaldi -i'

### Abbreviations

# Youtube-dl
abbr yta-aac 'youtube-dl --extract-audio --audio-format aac '
abbr yta-best 'youtube-dl --extract-audio --audio-format best '
abbr yta-flac 'youtube-dl --extract-audio --audio-format flac '
abbr yta-m4a 'youtube-dl --extract-audio --audio-format m4a '
abbr yta-mp3 'youtube-dl --extract-audio --audio-format mp3 '
abbr yta-opus 'youtube-dl --extract-audio --audio-format opus '
abbr yta-vorbis 'youtube-dl --extract-audio --audio-format vorbis '
abbr yta-wav 'youtube-dl --extract-audio --audio-format wav '
abbr ytv-best 'youtube-dl -f bestvideo+bestaudio '

# Torified Youtube-dl
abbr tyta-aac 'torify youtube-dl --extract-audio --audio-format aac '
abbr tyta-best 'torify youtube-dl --extract-audio --audio-format best '
abbr tyta-flac 'torify youtube-dl --extract-audio --audio-format flac '
abbr tyta-m4a 'torify youtube-dl --extract-audio --audio-format m4a '
abbr tyta-mp3 'torify youtube-dl --extract-audio --audio-format mp3 '
abbr tyta-opus 'torify youtube-dl --extract-audio --audio-format opus '
abbr tyta-vorbis 'torify youtube-dl --extract-audio --audio-format vorbis '
abbr tyta-wav 'torify youtube-dl --extract-audio --audio-format wav '
abbr tytv-best 'torify youtube-dl -f bestvideo+bestaudio '

### Functions

# Pacman
function i --wraps='sudo pacman -S' --description 'Install (pacman -S)'
    sudo pacman -S $argv;
end

function u --wraps='sudo pacman -Syu' --description 'Update (pacman -Syu)'
    sudo pacman -Syu $argv;
end

function s --wraps='pacman -Ss' --description 'Search (pacman -Ss)'
    pacman -Ss $argv;
end

function rdd --wraps='sudo pacman -Rdd ' --description 'Remove package without dependencies (pacman -Rdd)'
    sudo pacman -Rdd $argv;
end

function r --wraps='sudo pacman -Rs' --description 'Remove (pacman -Rs)'
    sudo pacman -Rs $argv;
end

function p --wraps='sudo pacman -Qmq | pacman -Rs -' --description 'Purge (rm pkgs no longer included in any repos)'
    sudo pacman -Qmq | pacman -Rs - $argv;
end

function ac --wraps='sudo pacman -Sc' --description 'Autoclean (clean up all local caches)'
    sudo pacman -Sc $argv;
end

function ai --wraps='pacman -Si' --description 'Info (pacman -Si)'
    pacman -Si $argv;
end

function ar --wraps='sudo pacman -Qdtq | pacman -Rs –' --description 'Autoremove (rm deps no longer needed)'
    sudo pacman -Qdtq | pacman -Rs – $argv;
end

function c --wraps='sudo pacman -Scc' --description 'Clean (pacman -Scc)'
    sudo pacman -Scc $argv;
end

function unlock --wraps='sudo rm /var/lib/pacman/db.lck' --description 'Unlock Pacman'
    sudo rm /var/lib/pacman/db.lck $argv;
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

# Confirm before overwriting something
function rm --description 'rm safely'
    command rm -i $argv;
end

function mv --description 'mv safely'
    command mv -i $argv;
end

function cp --description 'cp safely'
    command cp -i $argv;
end

# Trash bin
function rmrf --description 'move to trash recursively'
    kioclient5 mv (echo (readlink -e $argv)) trash:/
end

function emptytrash --wraps='ktrash5 --empty' --description 'Empty trash bin'
    ktrash5 --empty
    and echo "Trash bin is empty"
end

function mkcd --description "Create and cd to directory"
    mkdir $argv
    and cd $argv
end

function copypath --description "Copy full file path"
    readlink -e $argv | xclip -sel clip
    echo "copied to clipboard"
end

# Exa
function ls --wraps='exa --long --header --classify --icons' --description 'ls'
    exa --long --header --classify --icons $argv;
end

function tree --wraps='exa --tree --level=2 --long --header --classify --icons' --description 'Tree'
    exa --tree --level=2 --long --header --classify --icons $argv;
end

function grep --description 'Color grep'
    command grep --color=auto $argv;
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
    xclip -selection clipboard
end

function pbpaste  --description "Paste data from the Clipboard"
    xclip -selection clipboard -o
end

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

### NET
function myip --description 'What is my IP?'
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
    resize -s $LINES 125
    curl wttr.in/$argv
end

function погода --description "Погода в Уфе"
    curl wttr.in/Ufa
end

function transfer --description "Upload file to transfer.sh"
    curl --progress-bar --upload-file $argv https://transfer.sh/(basename $argv)
end

function showgit --description "Show git origin"
    open (git remote get-url origin)
end

### Youtube-dl
function ydl --wraps='youtube-dl' --description 'Youtube-dl'
    youtube-dl $argv;
end

function ydlb --wraps='youtube-dl -a' --description 'Youtube-dl batch'
    youtube-dl -a $argv;
end

function tydl --wraps='torify youtube-dl' --description 'Youtube-dl (Tor)'
    torify youtube-dl $argv;
end

function tydlb --wraps='torify youtube-dl -a' --description 'Youtube-dl batch (Tor)'
    torify youtube-dl -a $argv;
end

### The most needed function
function rickroll --description 'the terminal rickroll'
    curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash
end

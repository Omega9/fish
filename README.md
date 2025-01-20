# My fish config
[🇬🇧](https://github.com/Omega9/fish/blob/main/README.md) • [🇷🇺](https://github.com/Omega9/fish/blob/main/README.ru.md)

```
                  ___
   ___======____=---=)
 /T            \_--===)
 [ \ (0)   \~    \_-==)
  \      / )J~~    \-=)
   \\___/  )JJ~~~   \)
    \_____/JJ~~~~~    \
    / \  , \J~~~~~     \
   (-\)\=|\\\~~~~       L__
   (\\)  (\\\)_           \==__
    \V    \\\) ===_____   \\\\\\
           \V)     \_) \\\\JJ\J\)
                       /J\JT\JJJJ)
                       (JJJ| \UUU)
                        (UU)
```

Since zsh is not the fastest shell, I decided to give [fish](https://fishshell.com/) a try and started copying all the functions and acronyms I needed. In the end, I got carried away and it turned out even more than I had planned.
However, the configuration is not overcomplicated and is designed for normal everyday use without any specialization. It is quite easy to understand it and change it to suit your needs.

This configuration has [fisher](https://github.com/jorgebucaran/fisher) installed and several add-ons that can be updated with it:
- [bobthefish](https://github.com/oh-my-fish/theme-bobthefish)
- [fzf](https://github.com/jethrokuan/fzf)
- [Foreign Environment](https://github.com/oh-my-fish/plugin-foreign-env)
- [replay.fish](https://github.com/jorgebucaran/replay.fish)
- [to-fish](https://github.com/joehillen/to-fish)
- [fish-abbreviation-tips](https://github.com/gazorby/fish-abbreviation-tips)
- [done](https://github.com/franciscolourenco/done)
- [extract](https://github.com/oh-my-fish/plugin-extract)
- [fish-bd](https://github.com/0rax/fish-bd)
- [fish-async-prompt](https://github.com/acomagu/fish-async-prompt)
- [Sponge](https://github.com/meaningful-ooo/sponge)
- [up](https://github.com/shannonmoeller/up)

`/functions` contains fisher and all functions installed with it.

All functions and abbreviations I added are contained in `functions_and_abbreviations.fish`
Some part I carried over from my zsh configuration. Some of them were added by me, others may have come across to you before on the Github.

Quick reference:
- `t-h` for terminal shortcuts
- `p-h` for Pacman commands
- `y-h` for YAY commands
- `a-h` for Aura commands

[![asciicast](https://asciinema.org/a/434291.svg)](https://asciinema.org/a/434291)

## Instructions
1. Modify `config.fish` and `functions_and_abbreviations.fish` to your likings
2. Add anything to your PATH with `fish_add_path`
3. `fisher update` to update functions

## Dependencies and recommendations
- [OpenDoas](https://wiki.archlinux.org/title/Doas)
- [wl-clipboard](https://github.com/bugaevc/wl-clipboard) for `pbcopy`/`pbpaste` on Wayland
- Xclip for `pbcopy`/`pbpaste` on Xorg
- notify-send for `done`
- [Aura](https://fosskers.github.io/aura/) ([aura-bin](https://aur.archlinux.org/packages/aura-bin/)) and/or [Yay](https://github.com/Jguer/yay)
- [Eza](https://eza.rocks) for `ls` and `tree`
- [Bat](https://github.com/sharkdp/bat) for `cat`
- [Tere](https://github.com/mgunyho/tere) - a faster alternative to `cd + ls`
- [Delta](https://github.com/dandavison/delta) for `diff`
- [fd](https://github.com/sharkdp/fd) for `find`
- [ripgrep](https://github.com/BurntSushi/ripgrep) for `grep`
- [Youtube-dl](https://youtube-dl.org/), but I recommend [yt-dlp](https://github.com/yt-dlp/yt-dlp) with a [drop-in](https://aur.archlinux.org/packages/yt-dlp-drop-in)
- [Gallery-dl](https://github.com/mikf/gallery-dl)
- Tor for torifying Youtube-dl and Gallery-dl
- Pandoc for `docx2md`
- [Gist](https://github.com/defunkt/gist)
- [fzf](https://github.com/junegunn/fzf)
- [Micro editor](https://micro-editor.github.io/)
- [FFmpeg](https://ffmpeg.org) for `ffc`
- [ImageMagick](https://imagemagick.org) for `imc`
- *(optional)* `kioclient` and `ktrash6` from KDE for trash bin
- *(optional)* [ascii-image-converter](https://github.com/TheZoraiz/ascii-image-converter)
- *(optional)* [Ddate](https://en.wikipedia.org/wiki/Discordian_calendar), [International Fixed Calender](https://github.com/gauravnumber/ifc-cli), [Oblique Strategies](https://github.com/nph278/oblique-strategies-cli) of [fortune](https://en.wikipedia.org/wiki/Fortune_(Unix)) for `fish_greeting`
- *(optional)* [Pokemonsay](https://github.com/HRKings/pokemonsay-newgenerations.git) or [Ponysay](https://erkin.party/ponysay/) for `fish_greeting`
- *(optional)* [Lolcat](https://github.com/busyloop/lolcat) for colorful help messages

* * *
## Other
- [fish logo](https://github.com/fish-shell/fish-shell/issues/114)
- [fish logo](https://github.com/laughedelic/fish_logo) for `fish_greeting`
- [This config for Haiku OS](https://github.com/Omega9/fish-for-haiku)

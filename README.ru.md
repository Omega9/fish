# Мой конфиг для fish shell
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

Так как zsh - не самая быстрая оболочка, я решил попробовать [fish](https://fishshell.com/) и начал копировать все необходимые мне функции и аббревиатуры. В итоге я увлёкся и вышло даже больше, чем я планировал.
Тем не менее, конфигурация не переусложнена и рассчитана на обычное каждодневное использование без какой либо специализации. Разобраться в ней и изменить под свои нужды довольно легко.

В этой конфигурации установлен [fisher](https://github.com/jorgebucaran/fisher) и несколько дополнений, которые можно обновлять с его помощью:
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

`/functions` содержит fisher и все установленные с его помощью функции.

Все функции и аббревиатуры, добавленные мною, содержатся в `functions_and_abbreviations.fish`
Некоторую часть я перенёс из своей конфигурации zsh. Часть из них добавлена мною, другие могли попадаться вам прежде на просторах Github.

Быстрая справка:
- `t-h` для шорткатов терминала
- `p-h` для команд Pacman
- `y-h` для команд Yay
- `a-h` для команд Aura

[![asciicast](https://asciinema.org/a/434291.svg)](https://asciinema.org/a/434291)

## Инструкция
1. Исправьте `config.fish` и `functions_and_abbreviations.fish` на свой вкус
2. Добавьте необходимые пути в PATH с помощью `fish_add_path`
3. `fisher update` для обновления функций

## Зависимости и рекомендации
- [OpenDoas](https://wiki.archlinux.org/title/Doas_(%D0%A0%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B9))
- [wl-clipboard](https://github.com/bugaevc/wl-clipboard) для `pbcopy`/`pbpaste` на Wayland
- Xclip для `pbcopy`/`pbpaste` на Xorg
- notify-send для `done`
- [Aura](https://fosskers.github.io/aura/) ([aura-bin](https://aur.archlinux.org/packages/aura-bin/)) и/или [Yay](https://github.com/Jguer/yay)
- [Eza](https://eza.rocks) для `ls` и `tree`
- [Bat](https://github.com/sharkdp/bat) для `cat`
- [Tere](https://github.com/mgunyho/tere) - быстрая альтернатива `cd + ls`
- [Delta](https://github.com/dandavison/delta) для `diff`
- [fd](https://github.com/sharkdp/fd) для `find`
- [ripgrep](https://github.com/BurntSushi/ripgrep) для `grep`
- [Youtube-dl](https://youtube-dl.org/), но я рекомендую использовать [yt-dlp](https://github.com/yt-dlp/yt-dlp) с [подменой](https://aur.archlinux.org/packages/yt-dlp-drop-in)
- [Gallery-dl](https://github.com/mikf/gallery-dl)
- Tor для Youtube-dl и Gallery-dl
- Pandoc для `docx2md`
- [Gist](https://github.com/defunkt/gist)
- [fzf](https://github.com/junegunn/fzf)
- [Micro editor](https://micro-editor.github.io/)
- [FFmpeg](https://ffmpeg.org) для `ffc`
- [ImageMagick](https://imagemagick.org) для `imc`
- *(опционально)* `kioclient` и `ktrash6` из KDE для корзины
- *(опционально)* [ascii-image-converter](https://github.com/TheZoraiz/ascii-image-converter)
- *(опционально)* [Ddate](https://en.wikipedia.org/wiki/Discordian_calendar), [International Fixed Calender](https://github.com/gauravnumber/ifc-cli), [Oblique Strategies](https://github.com/nph278/oblique-strategies-cli) или [fortune](https://en.wikipedia.org/wiki/Fortune_(Unix)) для `fish_greeting`
- *(опционально)* [Pokemonsay](https://github.com/HRKings/pokemonsay-newgenerations.git) или [Ponysay](https://erkin.party/ponysay/) для `fish_greeting`
- *(опционально)* [Lolcat](https://github.com/busyloop/lolcat) для цветастой помощи

* * *
## Прочее
- [fish logo](https://github.com/fish-shell/fish-shell/issues/114)
- [fish logo](https://github.com/laughedelic/fish_logo) для `fish_greeting`
- [Версия для Haiku](https://github.com/Omega9/fish-for-haiku)

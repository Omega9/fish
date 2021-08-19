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
- [replay.fish](https://github.com/jorgebucaran/fish-bax)
- [to-fish](https://github.com/joehillen/to-fish)
- [fish-abbreviation-tips](https://github.com/gazorby/fish-abbreviation-tips)
- [done](https://github.com/franciscolourenco/done)

`/functions` содержит fisher и все установленные с его помощью функции.

Все функции и аббревиатуры, добавленные мною, содержатся в `functions_and_abbreviations.fish`
Некоторую часть я перенёс из своей конфигурации zsh. Часть из них добавлена мною, другие могли попадаться вам прежде на просторах Github.

## Инструкция
1. Исправьте `config.fish` и `functions_and_abbreviations.fish` на свой вкус
2. Добавьте необходимые пути в PATH с помощью `fish_add_path`
3. `fisher update` для обновления функций

## Зависимости и рекомендации
- Xclip для `pbcopy`/`pbpaste`
- notify-send для `done`
- [Exa](https://the.exa.website/) для `ls` и `tree`
- [Bat](https://github.com/sharkdp/bat) для `cat`
- [Delta](https://github.com/dandavison/delta) для `diff`
- [Youtube-dl](https://youtube-dl.org/)
- Tor для Youtube-dl
- Pandoc для `docx2md`
- [Gist](https://github.com/defunkt/gist)
- [Micro editor](https://micro-editor.github.io/)
- *(optional)* `kioclient5` и `ktrash5` из KDE для корзины
- *(опционально)* [Ddate](https://en.wikipedia.org/wiki/Discordian_calendar) для `fish_greeting`
- *(опционально)* [Pokemonsay](https://github.com/HRKings/pokemonsay-newgenerations.git) или [Ponysay](https://erkin.party/ponysay/) для `fish_greeting`

* * *
## Прочее
- [fish logo](https://github.com/fish-shell/fish-shell/issues/114)
- [fish logo](https://github.com/laughedelic/fish_logo) для `fish_greeting`
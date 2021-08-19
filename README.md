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
- [replay.fish](https://github.com/jorgebucaran/fish-bax)
- [to-fish](https://github.com/joehillen/to-fish)
- [fish-abbreviation-tips](https://github.com/gazorby/fish-abbreviation-tips)
- [done](https://github.com/franciscolourenco/done)

`/functions` contains fisher and all functions installed with it.

All functions and abbreviations I added are contained in `functions_and_abbreviations.fish`
Some part I carried over from my zsh configuration. Some of them were added by me, others may have come across to you before on the Github.-+

## Instructions
1. Modify `config.fish` and `functions_and_abbreviations.fish` to your likings
2. Add anything to your PATH with `fish_add_path`
3. `fisher update` to update functions
## Dependencies and recommendations
- Xclip for `pbcopy`/`pbpaste`
- notify-send for `done`
- [Exa](https://the.exa.website/) for `ls` and `tree`
- [Bat](https://github.com/sharkdp/bat) for `cat`
- [Delta](https://github.com/dandavison/delta) for `diff`
- [Youtube-dl](https://youtube-dl.org/)
- Tor for torifying Youtube-dl
- Pandoc for `docx2md`
- [Gist](https://github.com/defunkt/gist)
- [Micro editor](https://micro-editor.github.io/)
- *(optional)* `kioclient5` and `ktrash5` from KDE for trash bin
- *(optional)* [Ddate](https://en.wikipedia.org/wiki/Discordian_calendar) for `fish_greeting`
- *(optional)* [Pokemonsay](https://github.com/HRKings/pokemonsay-newgenerations.git) or [Ponysay](https://erkin.party/ponysay/) for `fish_greeting`

* * *
## Other
- [fish logo](https://github.com/fish-shell/fish-shell/issues/114)
- [fish logo](https://github.com/laughedelic/fish_logo) for `fish_greeting`
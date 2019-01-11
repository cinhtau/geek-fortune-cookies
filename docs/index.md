---
layout: page
title: Fortune cookies for Geeks 
---

[fortune](https://en.wikipedia.org/wiki/Fortune_(Unix)) is a programm from BSD that picks a random message from a database. 

![Fortune Cookie](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Fortune_cookies.jpg/320px-Fortune_cookies.jpg) 

This projects contribution is a database for Geeks.

Some use it in combination with `cowsay`.

```bash
tan@omega  ~/development/projects  fortune | cowsay
 ____________________________________
/ Q: What is orange and goes "click, \
\ click?" A: A ball point carrot.    /
 ------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
```


Example `cowsay` as `tux`.

```bash
 tan@omega  ~/development/projects  fortune | cowsay -f tux
 ________________________________________
/ Q: Why does Washington have the most   \
| lawyers per capita and                 |
|                                        |
| New Jersey the most toxic waste dumps? |
\ A: God gave New Jersey first choice.   /
 ----------------------------------------
   \
    \
        .--.
       |o_o |
       |:_/ |
      //   \ \
     (|     | )
    /'\_   _/`\
    \___)=(___/
```

## Status

This project is `STARTED`.

## Installation

Linux (deb-based)

```bash
sudo apt install fortune
```

Mac OS
```bash
brew install fortune
```

## Content

I have a strict guideline for content.

- messages deemed to be spam or questionable spam will be deleted. 
- messages including profanity will be deleted.
- messages containing language or concepts that could be deemed offensive will be deleted.
- messages that attack a person individually will be deleted.

The owner of this repository reserves the right to edit or delete any messages submitted to this repository without notice. This content policy is subject to change at any time.

Examples of unacceptable behavior by participants include:

- The use of sexualized language or imagery and unwelcome sexual attention or advances
- Trolling, insulting/derogatory comments, and personal or political attacks
- Public or private harassment
- Publishing others’ private information, such as a physical or electronic address, without explicit permission
- Other conduct which could reasonably be considered inappropriate in a professional setting

### Format

fortune uses database

```bash
fortune -f
100.00% /usr/share/games/fortunes
    15.59% riddles
    52.50% fortunes
    31.91% literature
```

The database will be named after the sources.

### Sources

* Programming Wisdom (Twitter Account)
* I Am Devloper (Twitter Account)

## License

See [MIT License](../LICENSE)
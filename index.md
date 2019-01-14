---
layout: default
---


## About fortune

License: [MIT](LICENSE)

![Fortune Cookie](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Fortune_cookies.jpg/320px-Fortune_cookies.jpg)

[fortune](https://en.wikipedia.org/wiki/Fortune_(Unix)) is a program from BSD that picks a random message from a database. 

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

### Data

Find first examples in the fortune directory. In order to use the fortune databases, create a random access file for storing strings with `strfile`.

```bash
for db in databases/*; do strfile $db;done  
```

Output
```text
"databases/i-am-developer.dat" created
There was 1 string
Longest string: 91 bytes
Shortest string: 91 bytes
"databases/i-am-developer.dat.dat" created
There was 1 string
Longest string: 32 bytes
Shortest string: 32 bytes
"databases/programming-wisdom.dat" created
There were 2 strings
Longest string: 123 bytes
Shortest string: 114 bytes
"databases/programming-wisdom.dat.dat" created
There was 1 string
Longest string: 36 bytes
Shortest string: 36 bytes
```

### Format

* Each entry starts with `%`
* Each entry must end with a newline.

### Usage

To use fortune with the databases, we pass the directory.

```bash
fortune databases
We build our computers the way we build our cities:
   over time, without a plan, on top of ruins.
        -- Ellen Ullman
```

Use it with `cowsay`

```
fortune databases | cowsay
 _________________________________________
/ We build our computers the way we build \
| our cities:                             |
|                                         |
| over time, without a plan, on top of    |
| ruins.                                  |
|                                         |
\ -- Ellen Ullman                         /
 -----------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

```
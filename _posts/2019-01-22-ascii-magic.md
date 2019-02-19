## ASCII Magic

Some magic Open Source contributions.

* cowsay
* boxes
* lolcat


### cowsay

Install

```bash
brew install cowsay
```

list all cowfiles

```
cowsay -l
```

cowfiles
```bash
Cow files in /usr/local/Cellar/cowsay/3.04/share/cows:
beavis.zen blowfish bong bud-frogs bunny cheese cower daemon default dragon
dragon-and-cow elephant elephant-in-snake eyes flaming-sheep ghostbusters
head-in hellokitty kiss kitty koala kosh luke-koala meow milk moofasa moose
mutilated ren satanic sheep skeleton small sodomized stegosaurus stimpy
supermilker surgery telebears three-eyes turkey turtle tux udder vader
vader-koala www
```

Use a dragon.
```
echo "holy cow" | cowsay -f dragon | lolcat
 __________ 
< holy cow >
 ---------- 
      \                    / \  //\
       \    |\___/|      /   \//  \\
            /0  0  \__  /    //  | \ \    
           /     /  \/_/    //   |  \  \  
           @_^_@'/   \/_   //    |   \   \ 
           //_^_/     \/_ //     |    \    \
        ( //) |        \///      |     \     \
      ( / /) _|_ /   )  //       |      \     _\
    ( // /) '/,_ _ _/  ( ; -.    |    _ _\.-~        .-~~~^-.
  (( / / )) ,-{        _      `-.|.-~-.           .~         `.
 (( // / ))  '/\      /                 ~-. _ .-~      .-~^-.  \
 (( /// ))      `.   {            }                   /      \  \
  (( / ))     .----~-.\        \-'                 .~         \  `. \^-.
             ///.----..>        \             _ -~             `.  ^-`  ^-_
               ///-._ _ _ _ _ _ _}^ - - - - ~                     ~-- ,.-~
                                                                  /.-~
```


### boxes

Find the [project](https://github.com/ascii-boxes/boxes).

Install
```bash
brew install boxes
```

Has a similar functionality to cowsay.

List all shapes
```bash
boxes -l
```

See an unicorn? &#129412;
```bash
echo "the last unicorn" | boxes -a c -d unicornsay | lolcat
   _________________________________
  /                                 \
  |        the last unicorn         |
  \___________________________  __'\
                              |/   \\
                               \    \\  .
                                    |\\/|
                                    / " '\
                                    . .   .
                                   /    ) |
                                  '  _.'  |
                                  '-'/    \
```

Example girl shape
```bash
echo "happy new year" | boxes -a c -d girl | lolcat
         .-"""-.
        / .===. \
       / / a a \ \
      / ( \___/ ) \
  _ooo\__\_____/__/____
 /                     \
|    happy new year     |
 \_________________ooo_/
      /           \
     /:.:.:.:.:.:.:\
         |  |  |
         \==|==/
         /-'Y'-\
        (__/ \__)
```

Some other
```bash
echo "happy new year" | boxes -a c -d ian_jones | lolcat
       \\\///
      / _  _ \
    (| (.)(.) |)
.-.OOOo--()--oOOO.-.
|                  |
|  happy new year  |
|                  |
'-.oooO------------'
   (   )   Oooo.
    \ (    (   )
     \_)    ) /
           (_/
```

### lolcat

Some research in Ruby brought me to `lolcat`. :heart_eyes: 

```bash
brew install lolcat
```

If you combine it with cowsay, a beautiful rainbow stegosaurus is the outcome.

```bash
echo "happy new year" | cowsay -f stegosaurus | lolcat
```

Output

```bash
 ________________ 
< happy new year >
 ---------------- 
\                             .       .
 \                           / `.   .' " 
  \                  .---.  <    > <    >  .---.
   \                 |    \  \ - ~ ~ - /  /    |
         _____          ..-~             ~-..-~
        |     |   \~~~\.'                    `./~~~/
       ---------   \__/                        \__/
      .'  O    \     /               /       \  " 
     (_____,    `._.'               |         }  \/~~~/
      `----.          /       }     |        /    \__/
            `-.      |       /      |       /      `. ,~~|
                ~-.__|      /_ - ~ ^|      /- _      `..-'   
                     |     /        |     /     ~-.     `-. _  _  _
                     |_____|        |_____|         ~ - . _ _ _ _ _>
```

### Custom Shapes for cowsay

cowsay allows to define custom shape files

For instance take the `bunny.cow` as template.

```
##
## A cute little wabbit
##
$the_cow = <<EOC;
  $thoughts
   $thoughts   \\
        \\ /\\
        ( )
      .( o ).
EOC
```

Create a [`pig.cow](https://cookie.cinhtau.net/cowsay/pig.cow) for the Chinese New Year 2019.

```
##
## A cute little piggy
##
$the_cow = <<EOC;
  $thoughts
   $thoughts   \\
          _____
      ^..^     \\9
      (oo)_____/
         WW  WW

EOC
```

[Pig on a fence](https://cookie.cinhtau.net/cowsay/pig-fence.cow)

```
##
## A cute little pig on a fence by Ian F. Stewart
##
$the_cow = <<EOC;
   $thoughts
    $thoughts   \\
     ^..^
_||__(oo)____||___
-||--"--"----||---
_||_( __ )___||___
-||--"--"----||---
 ||          ||
EOC
```

Copy it to the shapefile folder

```bash
cp *.cow /usr/local/Cellar/cowsay/3.04/share/cows/
```

Use it


```
________________ 
< Happy new Year >
 ---------------- 
  \
   \   \
          _____
      ^..^     \9
      (oo)_____/
         WW  WW
```

```
echo "Year of the pig" | cowsay -f pig-fence | lolcat
 _________________ 
< Year of the pig >
 ----------------- 
   \
    \   \
     ^..^
_||__(oo)____||___
-||--"--"----||---
_||_( __ )___||___
-||--"--"----||---
 ||          ||

```
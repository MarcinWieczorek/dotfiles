# Marcin Wieczorek dotfiles
#### Home is where `ls` is a mess
Welcome to my dotfiles repository. At the moment of writing this text I'm using ArchLinux as
my main distribution, but I use some of the configs on debian machines as well.

## Programs of first choice
| Purpose | Program |
| ------- | ------- |
| Browser | Firefox |
| Terminal emulator | alacritty |
| Email client | emacs |
| Email backend | notmuch |
| Email sync | offlineimap |
| Terminal file manager | vifm |
| GUI file manager | thunar |
| Torrent client | Transmission |
| Video player | vlc |
| Audio player | mopidy + mpd + mpc |
| Screen lock | slock |
| Window Manager | bspwm |
| Display manager | ly |
| Bar | polybar |
| Key daemon | sxhkd |
| Launcher | albert |
| Editor | neovim, emacs |
| Dotfile manager | yadm |

## What will you find here
### Config files for
- neovim
- i3
- bspwm
- sxhkd
- alacritty
- zsh
- oh-my-zsh
- conky
- mpd

### Some general purpose scripts
- AUR related things

## Key bindings
|Binding|Action|
|-------|------|
| MOD + Return | Open terminal window |
| MOD + F1 | Open browser |
| MOD + F2 | Open terminal file manager |
| MOD + Shift + F2 | Open gui file manager |
| MOD + F3 | Open email client |
| MOD + F4 | Open emacs |
| MOD + d | Open launcher |
| MOD + Meta + l | Lock the screen |
| MOD + Meta + q | Quit window manager |
| MOD + Meta + r | Restart window manager |
| MOD + Q | Kill node |
| MOD + {h,j,k,l} | Switch focus |
| MOD + Shift + {h,j,k,l} | Move nodes |
| MOD + [ | Move node to monitor to the left |
| MOD + ] | Move node to monitor to the right |
| MOD + Tab | Focus previous desktop |
| MOD + [0-9] | Switch to desktop |
| MOD + Shift + [0-9] | move node to desktop |
| MOD + D | Create new desktop |
| MOD + E | Edit configuration files |

## TODO list
- push all existing configs (most of the time they are unstaged mess)

## Snippets:
Run CTRL+R inside firefox
`xdotool search --onlyvisible --class "Firefox" windowfocus key --window %@ 'ctrl+r'`

# My Dotfiles for arch linux (mainly)

## Installation
```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
git clone --bare https://github.com/mythosmystery/dotfiles.git $HOME/.cfg
~or
git clone --bare git@github.com:mythosmystery/dotfiles.git $HOME/.cfg
config checkout
(remove any extra files)
config checkout
```
Now dotfiles are all installed to the system, time to install packages
`sudo pacman -S < desktop_pkg.txt`
or
`install-bspwm`

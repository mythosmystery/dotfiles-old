sudo pacman -Syyu
git clone https://aur.archlinux.org/pikaur.git $HOME/pikaur
cd $HOME/pikaur
makepkg -si
cd $HOME
sudo pacman -S --noconfirm zsh fish exa htop neofetch wget man-db tmux pacman-contrib xclip lxappearance-gtk3 github-cli alacritty
pikaur -S --noconfirm google-chrome visual-studio-code-bin appimagelauncher vim-plug zsh-autosuggestions zsh-syntax-highlighting-git zsh-theme-powerlevel10k starship palenight-gtk-theme
gh auth login
gh repo clone dotfiles ~/.cfg -- --bare
rm .zshrc .bashrc
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout ubuntu

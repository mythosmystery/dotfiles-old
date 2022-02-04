echo "update pacman and install rust"
sudo pacman -Syyu --noconfirm base-devel rustup
rustup install stable

echo "install paru"
git clone https://aur.archlinux.org/paru.git $HOME/paru
cd $HOME/paru
makepkg -si --noconfirm
cd $HOME

echo "install main repo packages"
sudo pacman -S --noconfirm zsh fish exa htop neofetch wget man-db neovim tmux pacman-contrib xclip github-cli alacritty

echo "install aur packages"
paru -S --noconfirm google-chrome visual-studio-code-bin vim-plug zsh-autosuggestions zsh-syntax-highlighting-git zsh-theme-powerlevel10k

echo "clone dotfiles"
git clone https://github.com/mythosmystery/dotfiles.git ~/.cfg -- --bare
rm .bashrc
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout

echo "All done!"

echo "update pacman and install pikaur"
sudo pacman -Syyu --noconfirm base-devel rustup
rustup install stable
git clone https://aur.archlinux.org/paru.git $HOME/paru
cd $HOME/paru
makepkg -si
cd $HOME
sudo pacman -S --noconfirm zsh fish exa htop neofetch wget man-db tmux pacman-contrib xclip lxappearance-gtk3 github-cli alacritty
paru -S --noconfirm google-chrome visual-studio-code-bin appimagelauncher vim-plug zsh-autosuggestions zsh-syntax-highlighting-git zsh-theme-powerlevel10k starship palenight-gtk-theme
gh auth login
gh repo clone dotfiles ~/.cfg -- --bare
rm .zshrc .bashrc
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout

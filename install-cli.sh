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
paru -S --noconfirm google-chrome visual-studio-code-bin vim-plug
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
gh auth login

echo "clone dotfiles"
gh repo clone dotfiles ~/.cfg -- --bare
rm .bashrc
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout

echo "All done!"

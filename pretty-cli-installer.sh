echo "adding fish repo and updating all software"
sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt -y update
sudo apt -y upgrade

echo "install cli apps"
sudo apt -y install zsh tmux gcc neovim vifm fish neofetch git

echo "install rust"
curl https://sh.rustup.rs -sSf | sh -s -- -y
. "$HOME/.cargo/env"

echo "install exa"
cargo install exa

echo "install zsh plugins"
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf

echo "clone dotfiles repo"
git clone https://github.com/mythosmystery/dotfiles.git ~/.cfg --bare
rm .bashrc .zshrc .config/fish/fish_variables
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout ubuntu

echo "All done!"

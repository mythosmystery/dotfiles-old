# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=$PATH:$HOME/.local/bin

export EDITOR='nvim'
export MANPAGER="nvim -c 'set ft=man' -"

alias c='clear'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls='exa'
alias la='exa -la --git'
alias lg='exa -lT --git-ignore --git'
alias lgi='exa -lT --git-ignore --git --icons'
alias lt='exa -lTL 2'
alias lti='exa -lTL 2 --icons'
alias vim=nvim

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR=/home/florida/.nvm
[ -s /home/florida/.nvm/nvm.sh ] && \. /home/florida/.nvm/nvm.sh # This loads nvm
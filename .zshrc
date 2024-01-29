# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# now, simply add these two lines in your ~/.zshrc

# source antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
  source "$HB_CNF_HANDLER";
fi

export SSH_AUTH_SOCK=/Users/yaroslav/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

alias lpreset="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"

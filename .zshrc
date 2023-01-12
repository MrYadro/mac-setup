# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ -r "/Users/yaroslav/.config/zi/init.zsh" ]]; then
  source "/Users/yaroslav/.config/zi/init.zsh" && zzinit
fi

zi light z-shell/z-a-meta-plugins
zi light @zsh-users+fast
zi light romkatv/powerlevel10k

zi snippet OMZP::git
zi snippet OMZP::brew
zi snippet OMZP::vscode
zi snippet OMZP::common-aliases

zi ice svn
zi snippet OMZP::macos

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
source "$HB_CNF_HANDLER";
fi

export SSH_AUTH_SOCK=/Users/yaroslav/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

alias lpreset="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"


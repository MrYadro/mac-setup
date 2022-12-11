# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source <(curl -sL git.io/zi-loader); zzinit

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

export SSH_AUTH_SOCK=/Users/yaroslav/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

alias lpreset="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"

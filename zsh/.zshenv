# [Environment Variables]
export DOTFILES="$HOME/.dotfiles"
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"
export EDITOR="nvim"
export VISUAL="nvim"


# [History]
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=100                     # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

		# Options:
setopt share_history # Zsh History if it was not obvious
setopt append_history # Append history rather than overwriting
setopt hist_ignore_dups # Don't store duplicate commands
setopt hist_reduce_blanks # Remove extra blanks from history commands

# [Aliases]
alias edit_zshenv='nvim ~/.zshenv'
alias edit_zshrc='nvim ~/.config/zsh/.zshrc'
alias edit_ghostty.conf='nvim ~/.config/ghostty/config'
alias resource_zsh='source ~/.config/zsh/.zshrc'
alias cls='clear';
alias ffetch='fastfetch';
alias home='clear && fastfetch'
		# Git:
alias gs='git status';
alias ga='git add';
alias gp='git push';
alias gpo='git push origin';
alias gr='git branch -r';
alias gplo='git pull origin';
alias gb='git branch ';
alias gc='git commit';
alias gd='git diff';
alias gco='git checkout';
alias gl='git log';
alias gr='git remote';
alias grs='git remote show';


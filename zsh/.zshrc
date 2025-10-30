# allen-alex  zshrc:
# This is my rc for the Zed-Shell (Because that sounds better than zea-shell)

source ~/.zshenv

# [Misc. Options]
setopt correct # Command spell-check
setopt complete_aliases
autoload -Uz tetriscurses
		# Auto-Complete:
autoload -Uz compinit # enabling autocomplete
compinit
				# Auto-Complete - Options:
setopt auto_menu # Automatically list choices on ambiguous completion
setopt auto_list
setopt auto_param_slash
setopt complete_in_word
setopt menu_complete # Use menu selection for completion (press Tab multiple times to cycle)

		# Prompt:
PROMPT="
%K{#2E3440} [%~] %k%K{#3b4252} [%n@%M]: %k 
   %F{blue}❯%f "
RPROMPT="%F{blue}%*%f"


bindkey '^[[3~' delete-char

# [History Search]
# Yeah I just plain stole this from Gemmi AI lol
# Load the history-substring-search widget
# This allows you to type part of a command and press Up/Down arrow keys
# to search through your history for commands containing that substring.
# You might need to install 'zsh-autosuggestions' or similar if this
# doesn't work out of the box on your system, but the core functionality
# of history search is built-in.
#bindkey '^[[A' history-substring-search-up    # Up arrow
#bindkey '^[[B' history-substring-search-down  # Down arrow



# [Plugins]
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

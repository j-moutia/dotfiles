# .zshrc file - Runs when starting zsh

# Enable colors and change prompt
autoload -U colors && colors

# Enable autocd
setopt autocd

# Set the prompt
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Save the history in ~/.cache
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)	# Include dotfiles

# Load aliases and shortcuts if they exist
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Enable syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### END OF FILE

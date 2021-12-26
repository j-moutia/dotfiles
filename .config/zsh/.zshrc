# .zshrc file - Runs when starting zsh

# Enable colors and change prompt
autoload -U colors && colors

# Options
setopt autocd                   # change directory just by typing its name
setopt notify                   # report status of background jobs immediately
setopt numericglobsort          # sort filenames numerically when it makes sense
setopt promptsubst              # enable command substitution in prompt

# Save the history in ~/.cache
HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=2000
setopt hist_expire_dups_first   # delete duplicates first when HISTFILE fills up
setopt hist_ignore_dups         # ignore duplicated commands history list
setopt hist_ignore_space        # ignore commands that start with space
setopt hist_verify              # show command with history expansion to user before running it

# Basic auto/tab complete
autoload -Uz compinit
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'   # case insensitive tab completion
zmodload zsh/complist
compinit
_comp_options+=(globdots)	# Include dotfiles

# Load aliases and shortcuts if they exist
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Set the prompt
#PROMPT=$'%B%F{red}[%F{%(#.red.yellow)}%n%F{%(#.white.green)}@%F{%(#.red.blue)}%M %F{magenta}%~%F{red}]%F{reset}%b%(#.#.$) '
PROMPT=$'%F{white}┌──${arch_chroot:+($arch_chroot)──}%B%F{%(#.red.blue)}%n%(#.💀.㉿)%m%b%F{white}-[%B%F{yellow}%(6~.%-1~/…/%4~.%5~)%b%F{white}]\n└─%B%(#.%F{red}#.%F{cyan}$)%b%F{reset} '
RPROMPT=$'%(?.. %? %F{red}%B⨯%b%F{reset})%(1j. %j %F{yellow}%B⚙%b%F{reset}.)'

# Enable auto-suggestions based on the history
if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    . /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    # set suggestion color
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#777'
fi

# Enable syntax highlighting
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    . /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

    ## Set highlighting styles
    #ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
    #ZSH_HIGHLIGHT_STYLES[default]=none
    #ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red,bold
    #ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=cyan,bold
    #ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=green,underline
    #ZSH_HIGHLIGHT_STYLES[global-alias]=fg=magenta
    #ZSH_HIGHLIGHT_STYLES[precommand]=fg=green,underline
    #ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=blue,bold
    ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=green,underline
    ZSH_HIGHLIGHT_STYLES[path]=underline
    ZSH_HIGHLIGHT_STYLES[path_pathseparator]=
    ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=
    #ZSH_HIGHLIGHT_STYLES[globbing]=fg=blue,bold
    #ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=blue,bold
    #ZSH_HIGHLIGHT_STYLES[command-substitution]=none
    #ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]=fg=magenta
    #ZSH_HIGHLIGHT_STYLES[process-substitution]=none
    #ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]=fg=magenta
    #ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=blue
    #ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=blue
    #ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
    #ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=blue,bold
    #ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow
    #ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow
    #ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=yellow
    #ZSH_HIGHLIGHT_STYLES[rc-quote]=fg=magenta
    #ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=magenta
    #ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=magenta
    #ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]=fg=magenta
    #ZSH_HIGHLIGHT_STYLES[assign]=none
    #ZSH_HIGHLIGHT_STYLES[redirection]=fg=blue,bold
    #ZSH_HIGHLIGHT_STYLES[comment]=fg=#888,bold
    #ZSH_HIGHLIGHT_STYLES[named-fd]=none
    #ZSH_HIGHLIGHT_STYLES[numeric-fd]=none
    #ZSH_HIGHLIGHT_STYLES[arg0]=fg=green
    #ZSH_HIGHLIGHT_STYLES[bracket-error]=fg=red,bold
    #ZSH_HIGHLIGHT_STYLES[bracket-level-1]=fg=blue,bold
    #ZSH_HIGHLIGHT_STYLES[bracket-level-2]=fg=green,bold
    #ZSH_HIGHLIGHT_STYLES[bracket-level-3]=fg=magenta,bold
    #ZSH_HIGHLIGHT_STYLES[bracket-level-4]=fg=yellow,bold
    #ZSH_HIGHLIGHT_STYLES[bracket-level-5]=fg=cyan,bold
    #ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]=standout
fi

### END OF FILE

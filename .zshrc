HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
ZLE_REMOVE_SUFFIX_CHARS=$' \t\n;&'

zmodload zsh/complist 
autoload -Uz compinit
compinit
zstyle :compinstall filename '${HOME}/.zshrc'

zstyle ':completion:*:pacman:*' force-list always
zstyle ':completion:*:*:pacman:*' menu yes select

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always

zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*'   force-list always

export FZF_CTRL_R_OPTS="--reverse --color=fg:#888888,bg:-1,fg+:#FFFFFF,pointer:#01AB84,prompt:#01AB84,header:#01AB84,hl:#01AB84,hl+:#FFFFFF"

setopt append_history share_history histignorealldups
setopt autocd
unsetopt beep
setopt rmstarsilent

# Import the pywall colors.
. "${HOME}/.cache/wal/colors.sh"

# prompt
PROMPT='%F{green}%B[%c]%b%f '

# aliases
alias ls="ls --color=auto"
alias history="history -E 0"
alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'
alias todo="todo.sh"


# zsh-syntax-highlighting
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ignore case in directory/file auto-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select

# set title on terminal spawn
precmd () {
    print -Pn "\e]0;%~\a"
}

# set title on command execution
preexec () {
    print -Pn "\e]0;$1\a"
}

# key bindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\ee[C" forward-word
bindkey "\ee[D" backward-word
bindkey "^H" backward-delete-word
# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix


# exec some stuff
neofetch 
echo "THINGS TO DO" && todo.sh list

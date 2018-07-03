#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#


#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
#setopt APPEND_HISTORY
## for sharing history between zsh processes
#setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY

## never ever beep ever
setopt no_beep

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0
bindkey -e
export LANG=ja_JP.UTF-8
export EDITOR=vim 
alias l="ls"
alias ll="ls -la"
alias la="ls -a"
alias mv="mv -i"
alias cp="cp -i"

alias jst='TZ=Asia/Tokyo date'
alias pst='TZ=US/Pacific date'
alias utc='TZ=UTC date'
alias p="ps aux | head -n 1 && ps aux | grep"

autoload -U compinit
compinit
setopt correct
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
zstyle ':completion:*:default' menu select=1

## for history
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt hist_reduce_blanks
setopt share_history
setopt extended_history
setopt hist_ignore_all_dups
autoload predict-on
predict-on
## for prompt
autoload -U colors
colors
setopt prompt_subst
setopt transient_rprompt

autoload -Uz vcs_info
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
PROMPT='%{${fg[blue]}%}%n@%m:%~%{${reset_color}%}  %T
%B%{${fg[red]}%}>%{${reset_color}%}%{${fg[yellow]}%}>%{${reset_color}%}%{${fg[green]}%}> %{${reset_color}%}%b'
RPROMPT='${vcs_info_msg_0_}'

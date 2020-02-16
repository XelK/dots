# If not running interactively ... get out of here! 


[ -z "$PS1" ] && return

stty -ixon

source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash
export FZF_DEFAULT_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null ||
cat {} || tree -C {}) 2> /dev/null | head -200'"
complete -o bashdefault -o default -F _fzf_path_completion zathura

	
if ! pgrep -x tmux; then
    eval $(keychain --eval --quiet ~/.ssh/keys/*.pem);
fi;


export TERM=xterm-256color
#export PAGER=vimpager

### colored man
man() {
    env \
    LESS_TERMCAP_mb="$(printf "\e[1;31m")" \
    LESS_TERMCAP_md="$(printf "\e[1;31m")" \
    LESS_TERMCAP_me="$(printf "\e[0m")" \
    LESS_TERMCAP_se="$(printf "\e[0m")" \
    LESS_TERMCAP_so="$(printf "\e[1;44;33m")" \
    LESS_TERMCAP_ue="$(printf "\e[0m")" \
    LESS_TERMCAP_us="$(printf "\e[1;32m")" \
    man "${@}"
}


##termite ctl+t
##if [[ $TERM == xterm-termite ]]; then

#if [[ $TERM == xterm-256color ]]; then
#  . /etc/profile.d/vte.sh
#  __vte_prompt_command
#fi

##### ssh tmux windows name ######
settitle() {
    printf "\033k$1\033\\"
}

ss(){
	#ssh $(cat .ssh/known_hosts|awk -F ',' '{print $1}'|awk -F ' ' '{print $1}'|fzf)
	#ssh $(cat .ssh/hosts|fzf)
	ssh $(cat .ssh/hosts|fzf|awk -F "-" '{print $1}')
}


PATH=$PATH:/usr/local/bin:~/src
# Enable programmable completion features.
if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
fi

export EDITOR=vim
export VISUAL=vim
export BROWSER=firefox

complete -cf sudo

shopt -s autocd #change directory

#history, with arrow, shorter
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
export HISTCONTROL=ignoredups:erasedups
#HISTCONTROL=ignoredups:ignorespace # don't put duplicate lines in the history and force ignoredups and ignorespace
shopt -s histappend  # append to the history file, don't overwrite it
# for setting history length see HISTSIZE and HISTFILESIZE in bash
HISTSIZE= HISTFILESIZE= #infinite
export HISTTIMEFORMAT="%d/%m/%y %T "
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND" # Append commands to the history every time a prompt is shown, instead of after closing the session.

# check the window size after each command and, if necessary,update the values of LINES and COLUMNS.
shopt -s checkwinsize

force_color_prompt=yes # should be on the output of commands, not on the prompt

# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

export PS1="\[\033[38;5;1m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;6m\]\H\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;11m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \t\n>\[$(tput sgr0)\]"
##### git promt to bash shell  ####
### source: git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1 ###
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

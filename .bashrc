# If not running interactively ... get out of here! 


[ -z "$PS1" ] && return

## start ssh-agent once
#if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#    ssh-agent > "$XDG_RUNTIME_DIR/ssh-agent.env"
#fi
#if [[ ! "$SSH_AUTH_SOCK" ]]; then
#    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
#fi

stty -ixon

export FZF_DEFAULT_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
complete -o bashdefault -o default -F _fzf_path_completion zathura

# virtualenv
source /usr/bin/virtualenvwrapper_lazy.sh
	
eval $(keychain --noask --eval --quiet ~/.ssh/keys/*.pem);

##### ssh tmux windows name ######

ss() {
	ssh $(cat .ssh/hosts|fzf|awk -F "-" '{print $1}')
}


PATH=$PATH:/usr/local/bin:~/docs/bin
XDG_CONFIG_HOME=$HOME/.config
XDG_CACHE_HOME=$HOME/.cache
XDG_DATA_HOME=$HOME/.local/share
# Enable programmable completion features.
[[ -f /usr/share/bash-completion/bash_completion ]]  && source /usr/share/bash-completion/bash_completion

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
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

export PS1="\[\033[38;5;1m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;6m\]\H\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;11m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \t\n>\[$(tput sgr0)\]"

##### git promt to bash shell  ####
### source: git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1 ###
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

[[ -f ~/.fzf.bash ]] && source ~/.fzf.bash


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

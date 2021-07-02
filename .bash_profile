#
# ~/.bash_profile
#

[[ -f ~/.bashrc  ]] && . ~/.bashrc

export WIKI=$HOME"/docs/wiki"
export WIKI_HTML=$HOME"/docs/wiki_html"
export WIKI_IMG=$HOME"/docs/wiki/img"
export SRC=$HOME"/docs/src"
export TERM=xterm-kitty
#export TERM=xterm-256color
export PAGER=vimpager
export EDITOR=vim
export VISUAL=vim
export MOZ_X11_EGL=1 #need for firefox hardware video decode
export BROWSER=firefox-developer-edition
export EDITOR=vim
export VISUAL=vim
export MOZ_X11_EGL=1 #need for firefox hardware video decode
export BROWSER=firefox-developer-edition

export STARDICT_DATA_DIR=$XDG_DATA_HOME

export HISTCONTROL=ignoredups:erasedups
export HISTTIMEFORMAT="%d/%m/%y %T "


if ! pidof i3 > /dev/null; then
	startx
fi

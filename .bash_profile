#
# ~/.bash_profile
#

export WIKI=$HOME"/docs/wiki"
export WIKI_HTML=$HOME"/docs/wiki_html"
export WIKI_IMG=$HOME"/docs/wiki/img"
export SRC=$HOME"/docs/src"
export TERM=xterm-kitty
export PAGER=vimpager
export EDITOR=vim
export VISUAL=vim
export MOZ_X11_EGL=1 #need for firefox hardware video decode
export BROWSER=firefox-developer-edition
export HISTCONTROL=ignoredups:erasedups
export HISTTIMEFORMAT="%d/%m/%y %T "

[[ -f ~/.bashrc ]] && . ~/.bashrc

if ! pidof i3 > /dev/null; then
	startx
fi

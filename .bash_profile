#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if ! pidof i3 > /dev/null; then
	startx
fi

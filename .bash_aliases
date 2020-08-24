#### dots manager ####
alias dots='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
alias dots.ls='dots ls-tree -r master --name-only'
alias dots.up='dots commit -am "update" && dots push'
alias dots.stat='dots status'
#### dots manager ####
alias xclip='xclip -selection c'
alias mv='mv -i'
alias a.venv='source $HOME/docs/venv/bin/activate'
alias a.curl='curl -kIL'
alias cp='cp -i'
alias lr='ls -alFrt --color=auto'
alias ls='ls --color=auto'
alias la='ls -A'
alias l='ls -lhrt'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF --color'
alias c='cd -'
#alias s="ssh $(cat .ssh/known_hosts|awk -F ',' '{print $1}'|fzf)"
alias tailf="tail -f"
alias a.weather="curl wttr.in/Milan"
alias a.myip="curl ifconfig.co"
alias powertop="sudo powertop"
alias v="vim"
alias svim="sudoedit"
alias fuck='sudo $(history -p !!)'
alias nmap="sudo nmap"
alias a.host="sudo vim /etc/hosts"
alias a.disable.bluetooth="sudo rfkill block bluetooth"
alias a.randp="< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-16};echo"
alias a.ssh_no_key="ssh -o PreferredAuthentications=keyboard-interactive,password -o PubkeyAuthentication=no"   

####GIT ALIAS ###
alias ga="git add -ma"
alias gs="git status"
alias gc="git commit"
alias gp="git push"
alias gl="git log --graph --oneline --decorate --all"
####GIT ALIAS ###

alias a.check_ssl='check_ssl() { curl -vvI "$1" ;}; check_ssl '

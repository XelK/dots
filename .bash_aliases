alias dots='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
alias dots.ls='dots ls-tree -r master --name-only'
alias dots.up='dots commit -am "update" && dots push'
alias dots.stat='dots status'
alias xclip='xclip -selection c'
#alias diff='colordiff -y'
alias mv='mv -i'
alias a.curl='curl -kIL'
alias vvim='vim --servername VIM'
alias cp='cp -i'
alias lr='ls -alFrt --color=auto'
alias ls='ls --color=auto'
alias la='ls -A'
alias l='ls -lrt'
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
#alias a.myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias powertop="sudo powertop"
alias v="vim"
alias svim="sudoedit"
alias fuck='sudo $(history -p !!)'
alias nmap="sudo nmap"
#alias suspend="sudo systemctl suspend"
alias a.host="sudo vim /etc/hosts"
alias a.disable.bluetooth="sudo rfkill block bluetooth"
alias a.wifi_casa="sudo netctl start wlp3s0-Mary"
alias a.randp="< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-16};echo"
alias a.ssh_no_key="ssh -o PreferredAuthentications=keyboard-interactive,password -o PubkeyAuthentication=no"   

alias a.monitor1="xrandr --output HDMI-1 --off"
alias a.monitor2="xrandr --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate normal --output eDP-1 --primary --mode 1920x1080 --pos 0x1080 --rotate normal"



####GIT ALIAS ###
alias ga="git add -ma"
alias gs="git status"
alias gc="git commit"
alias gp="git push"
####GIT ALIAS ###


alias a.check_ssl='check_ssl() { curl -vvI "$1" ;}; check_ssl '
alias a.ssh="keychain --eval --quiet ~/.ssh/keys/*.pem"
alias a.ns="dig ns"
alias a.mx="dig mx"

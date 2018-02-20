# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH=$PATH:/opt/anaconda/bin/

TEAL="\[$(tput bold)\]\[\033[38;5;50m\]"
PURPLE="\[$(tput bold)\]\[\033[38;5;141m\]"
WHITE="\[$(tput sgr0)\]\[\033[38;5;15m\]"
RESET="\[$(tput sgr0)\]\[\033[38;5;229m\]"
export PS1="${TEAL}[${RESET}\t${TEAL}]${PURPLE} [${RESET}\w${PURPLE}]${RESET}\n  ↬${WHITE} "

BROWSER=/usr/bin/firefox
EDITOR='vim'
VISUAL='emacsclient -c -a ""'

alias ls='ls -alh --color=auto'
alias df='df -h'
alias lss='/bin/ls --color=auto'
alias sudo='sudo '
alias please='sudo $(fc -ln -1)'
alias emt='emacsclient -t -a ""'
alias setjava8='sudo archlinux-java set java-8-openjdk'
alias setjava9='sudo archlinux-java set jdk-9'
alias condapy='/opt/anaconda/bin/python3'
alias port_forwarding='ssh -N -f -L localhost:8890:localhost:8890 grobleke@noether.csse.rose-hulman.edu &> /dev/null'

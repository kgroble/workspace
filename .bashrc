# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

alias connect-tv='xrandr --output HDMI1 --auto --above eDP1'
alias disconnect-tv='xrandr --output HDMI1 --off'
# alias setjava8='sudo archlinux-java set java-8-openjdk'
# alias setjava9='sudo archlinux-java set jdk-9'


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

export PATH=$PATH:/home/kieran/.local/bin

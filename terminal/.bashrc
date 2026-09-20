#
# ~/.bashrc
#

alias wetter='curl wttr.in'
alias fast='fastfetch --kitty-direct ~/Pictures/pfp/mikuarch.png'

CYAN="\[\033[38;5;006m\]"
PINK="\[\033[38;5;219m\]"
BLACK="\[\033[38;5;236m\]"
BG="\[\033[48;5;236m\]"
DEFBG="\[\e[49m\]"
RESET="\[\033[0m\]"

USER="󱞩"
PROMPT_CHAR="$"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1="${BLACK}${BG}${CYAN}\w${DEFBG}${BLACK}\n${CYAN}>${RESET} "
#PS1="${BLACK}${BG}${CYAN}\w${DEFBG}${BLACK}${RESET}\n${BLACK}${BG}${CYAN}>${DEFBG}${BLACK}${RESET} "
#PS1="\n\$(echo "\$PWD" | tr '/' '\n')\n❯ "
#PS1="${BLACK}${BG}${CYAN}󱞩 ${CYAN}${PINK}\w ${CYAN}\$${DEFBG}${BLACK}${RESET} "
#PS1='[\u@\h \W]\$ '

export XDG_DATA_DIRS="$HOME/.local/share:${XDG_DATA_DIRS}"

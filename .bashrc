# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[00;31m\]\T\[\033[00m\] - \[\033[01;32m\]\u\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\T - \u\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
		xterm*|rxvt*)
				PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
		;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

alias cls="clear screen"
alias ydl="youtube-dl --prefer-ffmpeg"
alias ydlvid="youtube-dl --prefer-ffmpeg --postprocessor-args -fps 24"
alias ydlmp3="youtube-dl --prefer-ffmpeg -x --audio-quality 192 --audio-format mp3"
alias ec="emacsclient -t"
alias w3m="w3m -B"
alias xclip="xclip -selection c"
alias vp="amixer sset Master 5+ -q"
alias vm="amixer sset Master 5- -q"
alias v25="amixer sset Master 25 -q"
alias v50="amixer sset Master 50 -q"
alias v75="amixer sset Master 75 -q"
export TERM="xterm-256color"
export GOROOT="/usr/share/go"
export GOPATH="/home/naamik/go"
export gotraining="/home/naamik/Documents/ardanlabs/gotraining/topics"

# color codes
## foreground:
### #008700 - darkgreen
### #a89984
## background:
### #000000 - black
### #300A24 - ambience
### #2E2E2E - NumixDarkRed
# themes:
## gruvbox
## cyberpunk
## solarized-dark
## monokai

# if ["$TERM" = "screen"]; then
# gruvbox color codes
# echo -ne '\e]10;P008000\a'
# echo -ne 'P008000\a'
# # echo -ne 'P000A24\a'
# echo -ne 'P008000\a'
# # echo -ne 'P0AAAAA\a'
# # echo -ne 'P07A7A7\a'
# echo -ne 'P082828\a'
# echo -ne 'P0C241D\a'
# echo -ne 'P08971A\a'
# echo -ne 'P079921\a'
# echo -ne 'P058588\a'
# echo -ne 'P016286\a'
# echo -ne 'P089d6A\a'
# echo -ne 'P089984\a'
# echo -ne 'P0928374\a'
# echo -ne 'P0FB4934\a'
# echo -ne 'P0B8BB26\a'
# echo -ne 'P0FABD2F\a'
# echo -ne 'P083A598\a'
# echo -ne 'P0D3869B\a'
# echo -ne 'P08EC07C\a'
# echo -ne 'P0EBDBB2\a'
# fi

# # gruvbox color codes
echo -ne '\e]10;#A89984\a'
# echo -ne '\e]10;#A89984\a'
echo -ne '\e]11;#A89984\a'
# echo -ne '\e]11;#300A24\a'
echo -ne '\e]12;#0000FF\a'
# echo -ne '\e]12;#A7A7A7\a'
echo -ne '\e]4;0;#7F7F7F\a'
echo -ne '\e]4;1;#CD0000\a'
echo -ne '\e]4;2;#00CD00\a'
echo -ne '\e]4;3;#CDCD00\a'
echo -ne '\e]4;4;#0000CD\a'
echo -ne '\e]4;5;#CD00CD\a'
echo -ne '\e]4;6;#00CDCD\a'
echo -ne '\e]4;7;#E5E5E5\a'
echo -ne '\e]4;8;#7F7F7F\a'
echo -ne '\e]4;9;#FF0000\a'
echo -ne '\e]4;10;#00FF00\a'
echo -ne '\e]4;11;#FFFF00\a'
echo -ne '\e]4;12;#0000FF\a'
echo -ne '\e]4;13;#FF00FF\a'
echo -ne '\e]4;14;#00FFFF\a'
echo -ne '\e]4;15;#FFFFFF\a'

# solarized-dark color codes
# # echo -ne '\e]4;0;#07364242\a'
# echo -ne '\e]4;1;#DC322F2F\a'
# echo -ne '\e]4;2;#85990000\a'
# echo -ne '\e]4;3;#B5890000\a'
# echo -ne '\e]4;4;#268BD2D2\a'
# echo -ne '\e]4;5;#D3368282\a'
# echo -ne '\e]4;6;#2AA19898\a'
# echo -ne '\e]4;7;#EEE8D5D5\a'
# echo -ne '\e]4;8;#002B3636\a'
# echo -ne '\e]4;9;#CB4B1616\a'
# echo -ne '\e]4;10;#586E7575\a'
# echo -ne '\e]4;11;#657B8383\a'
# echo -ne '\e]4;12;#83949696\a'
# echo -ne '\e]4;13;#6C71C4C4\a'
# echo -ne '\e]4;14;#93A1A1A1\a'
# echo -ne '\e]4;15;#FDF6E3E3\a'

# ambience color codes
echo -ne '\e]10;#A89984\a'
# echo -ne '\e]10;#A89984\a'
echo -ne '\e]11;#A89984\a'
# echo -ne '\e]11;#300A24\a'
echo -ne '\e]12;#A89984\a'
# echo -ne '\e]12;#A7A7A7\a'
echo -ne '\e]4;0;#000000\a'
echo -ne '\e]4;1;#AA0000\a'
echo -ne '\e]4;2;#00AA00\a'
echo -ne '\e]4;3;#AA5500\a'
echo -ne '\e]4;4;#0000AA\a'
echo -ne '\e]4;5;#AA00AA\a'
echo -ne '\e]4;6;#00AAAA\a'
echo -ne '\e]4;7;#AAAAAA\a'
echo -ne '\e]4;8;#555555\a'
echo -ne '\e]4;9;#FF5555\a'
echo -ne '\e]4;10;#55FF55\a'
echo -ne '\e]4;11;#FFFF55\a'
echo -ne '\e]4;12;#5555FF\a'
echo -ne '\e]4;13;#FF55FF\a'
echo -ne '\e]4;14;#55FFFF\a'
echo -ne '\e]4;15;#FFFFFF\a'


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
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

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
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
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
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# CUSTOM CONFIG
alias rnx='sudo /etc/init.d/nginx restart'
alias fpmr='service php7.0-fpm restart'
alias cls='clear'
alias dev='cd /home/mamh/PhpstormProjects'
alias new-site='sudo sh /home/mamh/PhpstormProjects/ubuntu-dev-pkg/nginx_add_site.sh'
alias delete-site="sudo sh /home/mamh/PhpstormProjects/ubuntu-dev-pkg/nginx_delete_site.sh"

alias mySSHKey='cat ~/.ssh/id_rsa.pub | xclip -sel clip ; echo "SSH Key Copied to the clipboard"'

alias sshstage1='service mysql stop;  ssh -L 3306:127.0.0.1:3306 web@stage1.fynskemedier.dk'
alias sshdevelop='service mysql stop; ssh -L 3306:localhost:3306 web@develop.fynskemedier.dk'

alias gotostageKodus2='ssh -A -o SendEnv=LC_WHOAMI web@10.254.0.160'
alias gotohotel2='ssh -A -o SendEnv=LC_WHOAMI web@jfmhotel2.fynskemedier.dk'
alias gotoservice1='ssh -A -o SendEnv=LC_WHOAMI web@fmservice1.fynskemedier.dk'
alias gotodevelop='ssh -A -o SendEnv=LC_WHOAMI web@develop.fynskemedier.dk.'
alias gotodevelop_old='ssh -A -o SendEnv=LC_WHOAMI web@develop.fyens.dk'
alias gotolive8='ssh -A -o SendEnv=LC_WHOAMI web@fmweb8.fynskemedier.dk'
alias gotowebscreen='ssh -A -o SendEnv=LC_WHOAMI  web@jfmwebscreen1.fynskemedier.dk'
alias gotolive5='ssh -A -o SendEnv=LC_WHOAMI web@fmweb5.fynskemedier.dk'
alias gotolive4='ssh -A -o SendEnv=LC_WHOAMI web@fmweb4.fynskemedier.dk'
alias gotolive11='ssh -A -o SendEnv=LC_WHOAMI web@fmweb11.fynskemedier.dk'
alias gotolive14='ssh -A -o SendEnv=LC_WHOAMI web@fmweb14.fynskemedier.dk'
alias gotolive3='ssh -A -o SendEnv=LC_WHOAMI web@fmweb3.fynskemedier.dk'
alias gotostage='ssh -A -o SendEnv=LC_WHOAMI web@fmstage1.fynskemedier.dk'
alias gotostage2='ssh -A -o SendEnv=LC_WHOAMI web@jfmstage2.fynskemedier.dk'
alias gototest1='ssh -A -o SendEnv=LC_WHOAMI web@test.fynskemedier.dk'
alias gototest2='ssh -A -o SendEnv=LC_WHOAMI web@fmtest2.fynskemedier.dk'
alias gotolumiere='ssh -A -o SendEnv=LC_WHOAMI web@lumiere.digitalkant.dk'

alias mitfyn-mamh='sshfs -p 22 -o nonempty -o IdentityFile=~/.ssh/id_rsa web@develop.fynskemedier.dk:/home/web/vhosts/mitfyn-mamh /home/mamh/mount/develop/mitfyn-mamh/'
alias mitfyn-mamh_old='sshfs -p 22 -o nonempty -o IdentityFile=~/.ssh/id_rsa web@develop.fyens.dk:/var/www/vhosts/mitfyn-mamh /home/mamh/mount/develop/mitfyn-mamh_old/'
alias fyens-mamh='sshfs -p 22 -o nonempty -o IdentityFile=~/.ssh/id_rsa web@develop.fynskemedier.dk:/home/web/vhosts/fyens-mamh /home/mamh/mount/develop/fyens-mamh/'
alias fyens2015-mamh='sshfs -p 22 -o nonempty -o IdentityFile=~/.ssh/id_rsa web@develop.fynskemedier.dk:/home/web/vhosts/fyens2015-mamh /home/mamh/mount/develop/fyens2015-mamh/'
alias tv2oj-mamh='sshfs -p 22 -o nonempty -o IdentityFile=~/.ssh/id_rsa web@develop.fynskemedier.dk:/home/web/vhosts/tv2oj-mamh /home/mamh/mount/develop/tv2oj-mamh/'
alias tvsyd-mamh='sshfs -p 22 -o nonempty -o IdentityFile=~/.ssh/id_rsa web@develop.fynskemedier.dk:/home/web/vhosts/tvsyd-mamh /home/mamh/mount/develop/tvsyd-mamh/'
alias tv2lorry-mamh='sshfs -p 22 -o nonempty -o IdentityFile=~/.ssh/id_rsa web@develop.fynskemedier.dk:/home/web/vhosts/tv2lorry-mamh /home/mamh/mount/develop/tv2lorry-mamh/'
alias sn2014-mamh='sshfs -p 22 -o nonempty -o IdentityFile=~/.ssh/id_rsa web@develop.fynskemedier.dk:/home/web/vhosts/sn2014-mamh /home/mamh/mount/develop/sn2014-mamh/'
alias vdonline-mamh='sshfs -p 22 -o nonempty -o IdentityFile=~/.ssh/id_rsa web@develop.fynskemedier.dk:/home/web/vhosts/vdonline-mamh /home/mamh/mount/develop/vdonline-mamh/'
alias folketid-mamh='sshfs -p 22 -o nonempty -o IdentityFile=~/.ssh/id_rsa web@develop.fynskemedier.dk:/home/web/vhosts/folketid-mamh /home/mamh/mount/develop/folketid-mamh/'
alias ugeavisen-mamh='sshfs -p 22 -o nonempty -o IdentityFile=~/.ssh/id_rsa web@develop.fynskemedier.dk:/home/web/vhosts/ugeavisen-mamh /home/mamh/mount/develop/ugeavisen-mamh/'
alias fyn-mamh='sshfs -p 22 -o nonempty -o IdentityFile=~/.ssh/id_rsa web@develop.fynskemedier.dk:/home/web/vhosts/fyn-mamh /home/mamh/mount/develop/fyn-mamh/'
alias tv2fyn-mamh='sshfs -p 22 -o nonempty -o IdentityFile=~/.ssh/id_rsa web@develop.fynskemedier.dk:/home/web/vhosts/tv2fyn-mamh /home/mamh/mount/develop/tv2fyn-mamh/'
alias jv2014-mamh='sshfs -p 22 -o nonempty -o IdentityFile=~/.ssh/id_rsa web@develop.fynskemedier.dk:/home/web/vhosts/jv2014-mamh /home/mamh/mount/develop/jv2014-mamh/'
alias fybi-mamh='sshfs -p 22 -o nonempty -o IdentityFile=~/.ssh/id_rsa web@develop.fynskemedier.dk:/home/web/vhosts/fybi-mamh /home/mamh/mount/develop/fybi-mamh/'


export LC_WHOAMI='mamh'
#export PATH=~/.config/composer/vendor/bin:$PATH

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '


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

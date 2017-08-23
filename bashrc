[ -z "$PS1" ] && return




# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
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
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi









if [ "$PS1" ]; then	# if running interactively, then run till 'fi' at EOF:

# source ~/.bashlocalrc	# settings that vary per workstation
OS=$(uname)		# for resolving pesky os differing switches








######################################################################################################################################################
###### COMMAND PROMPT & CLI ###### COMMAND PROMPT & CLI ###### COMMAND PROMPT & CLI ###### COMMAND PROMPT & CLI ###### COMMAND PROMPT & CLI ######
######################################################################################################################################################


PS1="\[$(tput bold)\]\[\033[38;5;39m\]\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;2m\]@\[$(tput sgr0)\]\[\033[38;5;11m\]{\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;208m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;11m\]}\[$(tput sgr0)\]\[\033[38;5;1m\]---->\[$(tput sgr0)\]\[\033[38;5;11m\][\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;37m\]\A\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;11m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]\[\033[38;5;11m\][\[$(tput sgr0)\]\[\033[38;5;32m\]\w\[$(tput sgr0)\]\[\033[38;5;11m\]]\[$(tput sgr0)\]\[\033[38;5;32m\]:\[$(tput sgr0)\]\[\033[38;5;14m\]_\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;90m\]\\$\[$(tput sgr0)\]"







###### Saves terminal commands in history file in real time (for use with 'shopt -s histappend')
if [ ! -f $HOME/.bash_history ];then touch $HOME/.bash_history;fi	# ensure bash history file always there
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"	# use with 'shopt -s histappend';save terminal commands in history file in real time





# autoload -U compinit				# use to enable famous zsh tab-completion system
# compinit					# use to enable famous zsh tab-completion system
export BLOCKSIZE=K				# set blocksize size
export BROWSER='firefox'			# set default browser
# export BROWSER='opera'			# set default browser
# export BROWSER=$(find_alternatives chromium-browser google-chrome opera firefox firefox-bin iceweasel konqueror w3m lynx)	# uses function 'find_alternatives'
export CDDIR="$HOME"				# for use with the function 'cd' and the alias 'cdd'
# export CDPATH=.:~:~/src:/etc
# export CDPATH=.:~:~/Dropbox 			# if you use dropbox from the command line often
# export DISPLAY=:79
# export EDITOR='gedit'				# use default text editor
# export EDITOR="gedit -w --resume" Typing 'fc'	# open last command for editing in gedit, then execute on save
export EDITOR='vi'				# use default text editor
# export ftp_proxy=${MY_PROXY}
# export GPG_TTY='tty'				# gpg-agent says it needs this
# export GREP_OPTIONS='-D skip --binary-files=without-match --ignore-case'		# most commonly used grep options
export HISTCONTROL=ignoreboth:erasedups		# for 'ignoreboth': ignore duplicates and /^\s/
# export HISTCONTROL=ignoreboth			# ignore spaced commands and prevents storing of duplicate commands (ie, ignoredups & ignorespace)
# export HISTCONTROL=ignoredups			# don't put duplicate lines in the history. See bash(1) for more options
# export HISTCONTROL=ignorespace		# will make sure that bash don’t store any command beginning with the space character
# export HISTFILE=/dev/null			# disable history for current shell session
# export HISTFILE='$HOME/.history'		# set history file location
# export HISTFILESIZE=10000			# increase or decrease the size of the history to '10,000'
# export HISTFILESIZE=${HISTSIZE}		# bash will remember 'N' commands
export HISTIGNORE='&:bg:fg:ll:h'
# export HISTIGNORE=' cd "`*: PROMPT_COMMAND=?*?'	# define shell variable HISTIGNORE so comments appear in shell history
# export HISTIGNORE='${HISTIGNORE:+$HISTIGNORE:}la:ll:lah:lat:;a:-:fg:bg:j:sync:esu:rma:rmp:fol:pfol'
# export HISTIGNORE="&:ls:[bf]g:exit"		# duplicate entries in bash history, as well as ls, bg, fg & exit, making for cleaner bash history
# export HISTIGNORE="&:ls:ll:la:l.:pwd:exit:clear"
# export HISTIGNORE='pwd:cd:ls:ls -l:'		# ignore commands given
export HISTSIZE=10000				# increase or decrease the size of the history to '10,000'
# export HISTTIMEFORMAT='| %d/%m/%y %T | '	# make 'History' Show The Date For Each Command
# export HISTTIMEFORMAT='%F %T '		# adds date and time to history
export HISTTIMEFORMAT='%H:%M > '
# export HISTTIMEFORMAT='%s' 			# the beloved Second of Our Linux
# export HISTTIMEFORMAT='%Y-%b-%d::%Hh:%Mm:%Ss '
export HISTTIMEFORMAT='%Y-%m-%d_%H:%M:%S_%a  '	# makes history display in YYYY-MM-DD_HH:MM:SS_3CharWeekdaySpaceSpace format
export HOSTFILE=$HOME/.hosts    		# put list of remote hosts in ~/.hosts ...
# export http_proxy=${MY_PROXY}			# proxy setting
# export https_proxy=${MY_PROXY}		# proxy setting
# export IGNOREEOF=1				# prevent CTRL-D from immediately logging out
# export INPUTRC=/etc/inputrc			# it's possible that this will make bash find my delete key (and everything else)((but i don't think it did))
# export INPUTRC=$HOME/.inputrc			# type in ‘whatever’ and press ‘Page Up’ key and bash automatically fetches last command that starts with whatever and completes the command for you (requires '$HOME/.inputrc' with these lines: #Page up/page down && "\e[5~": history-search-backward && "\e[6~": history-search-forward)
# export LC_COLLATE="en_CA.utf8"		# change sorting methods [a-Z] instead of [A-Z]
export LESSCHARSET='latin1'
export LESS='-i -N -w  -z-4 -g -e -M -X -F -R -P%t?f%f \'
# export LESSOPEN="|lesspipe.sh %s"; export LESSOPEN
export LESSOPEN='|/usr/bin/lesspipe.sh %s 2>&-'	# use this if lesspipe.sh exists
# export LESS="-QR"				# tell less not to beep and also display colours
# export LESS='-R'
# export LESS_TERMCAP_mb=$'\E[01;31m'      	# less colors for Man pages # begin blinking
# export LESS_TERMCAP_md=$'\E[01;38;5;74m'  	# less colors for Man pages # begin bold
# export LESS_TERMCAP_me=$'\E[0m'           	# less colors for Man pages # end mode
# export LESS_TERMCAP_se=$'\E[0m'           	# less colors for Man pages # end standout-mode
# export LESS_TERMCAP_so=$'\E[38;5;246m'    	# less colors for Man pages # begin standout-mode - info box
# export LESS_TERMCAP_ue=$'\E[0m'           	# less colors for Man pages # end underline
# export LESS_TERMCAP_us=$'\E[04;38;5;146m' 	# less colors for Man pages # begin underline
# export LIBGL_DRIVERS_PATH=/usr/lib/xorg/modules/dri					# gallium
# export MY_PROXY='http://YOUR_USERNAME:YOUR_PASSWORD@PROXY_IP:PROXY_PORT/'
# export OOO_FORCE_DESKTOP=gnome   		# openoffice preferences
# export OPERA_KEEP_BLOCKED_PLUGIN=1		# this is the special sauce to enhance flash (on opera's) performance
# export OPERAPLUGINWRAPPER_PRIORITY=0		# this is the special sauce to enhance flash (on opera's) performance
export PAGER='less -e'
# export PATH=$PATH:$HOME/scripts
# export PILOTRATE=57600			# make pilot-xfer go faster than 9600
export TERM='xterm'
export TIMEFORMAT=$'\nreal %3R\tuser %3U\tsys %3S\tpcpu %P\n'
#export TMOUT=600				# auto logout after n seconds of inactivity
# export USER_CLIENT=deluge
# export USER_DPRT=22218
# export USER_OPRT=47426
# export USER_VPRT=79
# export USER_WPRT=30818
export VIDEO_FORMAT=NTSC			# for use with creating compatible DVDs ('dvdauthor -x dvdauthor.xml' will fail if this not here)
# export VIDEO_FORMAT=PAL			# for use with creating compatible DVDs ('dvdauthor -x dvdauthor.xml' will fail if this not here)
export VISUAL='vi'
# export wpsetters=feh
# ${file%\.[^.]*}				# to remove filename extensions in bash
# fortune -a					# fortunes at each new shell
# mesg n              				#
set -b						# causes output from background processes to be output right away, not on wait for next primary prompt
# set bell-style visible			# I hate noise
# set completion-ignore-case on 		# complete things that have been typed in the wrong case
# set -o ignoreeof				# can't c-d out of shell
# set -o noclobber				# disallow > to work on files that already exist (prevents catting over file)
set -o notify					# notify when jobs running in background terminate
# set -o nounset				# attempt to use undefined variable outputs error message and forces exit (messes up completion if enabled)
# set +o nounset          			# otherwise some completions will fail
# setopt autopushd pushdminus pushdsilent pushdtohome
# setopt correct
# setopt extendedglob
# setopt hist_ignore_space    			# prepend ' ' to not be saved
# setopt hist_verify          			# verify when using !
# setopt nocheckjobs          			# don't complain about background jobs on e
# setopt no_clobber           			# don't overwrite files when redirect
# setopt nohup               			# don't kill bg jobs when tty quits
# setopt printexitvalue       			# print exit value from jobs
# setopt share_history
# set -o xtrace					# useful for debuging
# setterm -blength 0				# set the bell duration in milliseconds (silence the beeps)
# set visible-stats on 				# when listing possible file completions, put / after directory names and * after programs
shopt -s cdable_vars				# set the bash option so that no '$' is required (disallow write access to terminal)
shopt -s cdspell				# this will correct minor spelling errors in a cd command
shopt -s checkhash
shopt -s checkwinsize				# update windows size on command
shopt -s cmdhist          			# save multi-line commands in history as single line
# shopt -s dotglob				# files beginning with . to be returned in the results of path-name expansion
# shopt -s expand aliases			# expand aliases
shopt -s extglob				# necessary for bash completion (programmable completion)
# shopt -s globstar				# enables the ** globbing operator
# shopt -s histappend				# bash history is only saved when close terminal, not after each command and this fixes it
shopt -s histappend histreedit histverify
# shopt -s histreedit
# shopt -s histverify
# shopt -s hostcomplete     			# attempt hostname expansion when @ is at the beginning of a word
# shopt -s huponexit
shopt -s mailwarn				# keep an eye on the mail file (access time)
# shopt -s nocaseglob cdspell histappend
shopt -s nocaseglob       			# pathname expansion will be treated as case-insensitive (auto-corrects the case)
shopt -s no_empty_cmd_completion		# no empty completion (bash>=2.04 only)
# shopt -s nullglob dotglob
shopt -s sourcepath
# shopt -u cmdhist				# do not treat multiple line commands as a single entry
# shopt -u force_fignore			# expand to complete an ignored word, if no other words match.
# shopt -u mailwarn
# shopt -u sourcepath
# stty -ixon					# disable XON/XOFF flow control (^s/^q)
stty start undef
stty stop undef
# stty stop ''					# use C-s to search forward through history (do not block output)
# ulimit -c unlimited				# let me have core dumps
ulimit -S -c 0          			# (core file size) don't want any coredumps
# ulimit -S -f 1024   				# open files
# ulimit -S -s 8192  				# stack size
# ulimit -S -u 256    				# max user processes
# umask 007    					# all files created 660, dirs 770
# umask 022					# makes new files have permissions: rwxr-xr-x
# umask 077           				# after everything is installed, uncomment this and the mkdir alias below ((base 8) 777 & ~077 = 700 = u=rwx,g=,o=)
# unset HISTFILESIZE				# infinite History
# unset HISTSIZE				# infinite History
unset MAILCHECK        				# don't want my shell to warn me of incoming mail
# unsetopt bgnice            			# don't nice bg command

if [ -d $HOME/Maildir/ ]; then
    export MAIL=$HOME/Maildir/
    export MAILPATH=$HOME/Maildir/
    export MAILDIR=$HOME/Maildir/
elif [ -f /var/mail/$USER ]; then
    export MAIL="/var/mail/$USER"
fi

if [ "$TERM" = "screen" ]; then
    export TERM=$TERMINAL
fi

# if [ "$OS" = "Linux" ]; then
#     source ~/.lscolorsrc
# elif [ "$OS" = "Darwin" ]; then
#     export LSCOLORS='gxfxcxdxbxegedabagacad'
# fi

function get_xserver()
{
    case $TERM in
       xterm )
            XSERVER=$(who am i | awk '{print $NF}' | tr -d ')''(' )
            # Ane-Pieter Wieringa suggests the following alternative:
            # I_AM=$(who am i)
            # SERVER=${I_AM#*(}
            # SERVER=${SERVER%*)}
            XSERVER=${XSERVER%%:*}
            ;;
        aterm | rxvt)
        # Find some code that works here. ...
            ;;
    esac
}
if [ -z ${DISPLAY:=""} ]; then
    get_xserver
    if [[ -z ${XSERVER}  || ${XSERVER} == $(hostname) || \
      ${XSERVER} == "unix" ]]; then
        DISPLAY=":0.0"          # Display on local host.
    else
        DISPLAY=${XSERVER}:0.0  # Display on remote host.
    fi
fi
export DISPLAY

# if [ -f ~/.bash_exports ]; then . ~/.bash_exports ; fi
# if [ -f ~/.bash_functions ]; then . ~/.bash_functions ; fi
# if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases ; fi
# if [ -f ~/.bash_completion ]; then . ~/.bash_completion ; fi
# if [ -f /etc/bash_completion ]; then . /etc/bash_completion ; complete -cf sudo; fi



##################################################
# PATH						 #
##################################################

if [ "$UID" -eq 0 ]; then
    PATH=$PATH:/usr/local:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
fi

# remove duplicate path entries
export PATH=$(echo $PATH | awk -F: '
{ for (i = 1; i <= NF; i++) arr[$i]; }
END { for (i in arr) printf "%s:" , i; printf "\n"; } ')

# autocomplete ssh commands
complete -W "$(echo `cat ~/.bash_history | egrep '^ssh ' | sort | uniq | sed 's/^ssh //'`;)" ssh




##################################################
# Various options to make $HOME comfy		 #
##################################################

 if [ ! -d "${HOME}/bin" ]; then
     mkdir ${HOME}/bin
     chmod 700 ${HOME}/bin
     echo "${HOME}/bin No existia.  Lo he creado para ti ;)."
 fi

 if [ ! -d "${HOME}/Documents" ]; then
     if ! [  -d "${HOME}/data" ]; then
         mkdir ${HOME}/data
         chmod 700 ${HOME}/data
          echo "${HOME}/data No existia.  Lo he creado para ti ;)."
     fi
 fi

 if [ ! -d "${HOME}/tmp" ]; then
     mkdir ${HOME}/tmp
     chmod 700 ${HOME}/tmp
     echo "${HOME}/tmp No existia.  Lo he creado para ti ;)."
 fi



##################################################
# Automatically clean up all temporary files in	 #
# $HOME directory				 #
##################################################

 find "$HOME" -type f \( -name "*~" -or -name ".*~" -or -name "*.old" -or -name "*.bak" -or -name "*.OLD" -or -name "*.BAK" \)|xargs -I{} bash -c "rm -rf \"{}\""



##################################################
# 'Universal' completion function		 #
##################################################

######  it works when commands have a so-called 'long options' mode
# ie: 'ls --all' instead of 'ls -a'
# Needs the '-o' option of grep
# (try the commented-out version if not available).
# First, remove '=' from completion word separators
# (this will allow completions like 'ls --color=auto' to work correctly).
COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}



##################################################
# To enable tab-completion with sudo		 #
##################################################

###### alternatively, install bash-completion, which does this too
# complete -cf sudo



######################################################################################################################################################
###### FUNCTIONS ###### FUNCTIONS ###### FUNCTIONS ###### FUNCTIONS ###### FUNCTIONS ###### FUNCTIONS ###### FUNCTIONS ###### FUNCTIONS ###### FUNCTIONS
######################################################################################################################################################








##################################################
# Download all images from a 4chan thread	 #
##################################################

function 4chanimages()
{
curl -s http://boards.4chan.org/wg/|sed -r 's/.*href="([^"]*).*/\1\n/g'|grep images|xargs wget
}




##################################################
# Network information and IP address stuff	 #
##################################################

###### get all IPs via ifconfig
function allips()
{
ifconfig | awk '/inet / {sub(/addr:/, "", $2); print $2}'
}

###### clear iptables rules safely
function clearIptables()
{
iptables -P INPUT ACCEPT; iptables -P FORWARD ACCEPT; iptables -P OUTPUT ACCEPT; iptables -F; iptables -X; iptables -L
}



###### online check
function connected() { ping -c1 -w2 google.com > /dev/null 2>&1; }



function connected_() { rm -f /tmp/connect; http_proxy='http://a.b.c.d:8080' wget -q -O /tmp/connect http://www.google.com; if [[ -s /tmp/connect ]]; then return 0; else return 1; fi; }





###### geoip lookup (need geoip database: sudo apt-get install geoip-bin)
function geoip() {
geoiplookup $1
}



###### geoip information
# requires 'html2text': sudo apt-get install html2text
function geoiplookup() { curl -A "Mozilla/5.0" -s "http://www.geody.com/geoip.php?ip=$1" | grep "^IP.*$1" | html2text; }



###### get IP address of a given interface
# Example: getip lo
# Example: getip eth0	# this is the default
function getip()		{ lynx -dump http://whatismyip.org/; }




###### ifconfig connection check
function ips()
{
    if [ "$OS" = "Linux" ]; then
        for i in $( /sbin/ifconfig | grep ^e | awk '{print $1}' | sed 's/://' ); do echo -n "$i: ";  /sbin/ifconfig $i | perl -nle'/dr:(\S+)/ && print $1'; done
    elif [ "$OS" = "Darwin" ]; then
        for i in $( /sbin/ifconfig | grep ^e | awk '{print $1}' | sed 's/://' ); do echo -n "$i: ";  /sbin/ifconfig $i | perl -nle'/inet (\S+)/ && print $1'; done
    fi
}



###### geolocate a given IP address
function ip2loc() { wget -qO - www.ip2location.com/$1 | grep "<span id=\"dgLookup__ctl2_lblICountry\">" | sed 's/<[^>]*>//g; s/^[\t]*//; s/&quot;/"/g; s/</</g; s/>/>/g; s/&amp;/\&/g'; }


###### find the IP addresses that are currently online in your network
function localIps()
{
for i in {1..254}; do
	x=`ping -c1 -w1 192.168.1.$i | grep "%" | cut -d"," -f3 | cut -d"%" -f1 | tr '\n' ' ' | sed 's/ //g'`
	if [ "$x" == "0" ]; then
		echo "192.168.1.$i"
	fi
done
}



###### myip - finds your current IP if your connected to the internet
function myip()
{
lynx -dump -hiddenlinks=ignore -nolist http://checkip.dyndns.org:8245/ | awk '{ print $4 }' | sed '/^$/d; s/^[ ]*//g; s/[ ]*$//g'
}



###### netinfo - shows network information for your system
function netinfo()
{
echo "--------------- Network Information ---------------"
/sbin/ifconfig | awk /'inet addr/ {print $2}'
/sbin/ifconfig | awk /'Bcast/ {print $3}'
/sbin/ifconfig | awk /'inet addr/ {print $4}'
/sbin/ifconfig | awk /'HWaddr/ {print $4,$5}'
myip=`lynx -dump -hiddenlinks=ignore -nolist http://checkip.dyndns.org:8245/ | sed '/^$/d; s/^[ ]*//g; s/[ ]*$//g' `
echo "${myip}"
echo "---------------------------------------------------"
}




###### stupid funny face
function funny_face() {
  _ret=$?; if test $_ret -ne 0; then echo "0_0->ret=$_ret"; set ?=$_ret; unset _ret; else echo "^_^"; fi
}



###### pretend to be busy in office to enjoy a cup of coffee
function grepcolor()
{
cat /dev/urandom | hexdump -C | grep --color=auto "ca fe"
}



###### random cowsay stuff
function random_cow()
{
  files=(/usr/share/cowsay/cows/*)
  printf "%s\n" "${files[RANDOM % ${#files}]}"
}






##################################################
# Numerical conversions and numbers stuff	 #
##################################################

###### convert arabic to roman numerals
# Copyright 2007 - 2010 Christopher Bratusek
function arabic2roman() {

  echo $1 | sed -e 's/1...$/M&/;s/2...$/MM&/;s/3...$/MMM&/;s/4...$/MMMM&/
s/6..$/DC&/;s/7..$/DCC&/;s/8..$/DCCC&/;s/9..$/CM&/
s/1..$/C&/;s/2..$/CC&/;s/3..$/CCC&/;s/4..$/CD&/;s/5..$/D&/
s/6.$/LX&/;s/7.$/LXX&/;s/8.$/LXXX&/;s/9.$/XC&/
s/1.$/X&/;s/2.$/XX&/;s/3.$/XXX&/;s/4.$/XL&/;s/5.$/L&/
s/1$/I/;s/2$/II/;s/3$/III/;s/4$/IV/;s/5$/V/
s/6$/VI/;s/7$/VII/;s/8$/VIII/;s/9$/IX/
s/[0-9]//g'

}



###### convert ascii
# copyright 2007 - 2010 Christopher Bratusek
function asc2all() {
	if [[ $1 ]]; then
		echo "ascii $1 = binary $(asc2bin $1)"
		echo "ascii $1 = octal $(asc2oct $1)"
		echo "ascii $1 = decimal $(asc2dec $1)"
		echo "ascii $1 = hexadecimal $(asc2hex $1)"
		echo "ascii $1 = base32 $(asc2b32 $1)"
		echo "ascii $1 = base64 $(asc2b64 $1)"
	fi
}



function asc2bin() {
	if [[ $1 ]]; then
		echo "obase=2 ; $(asc2dec $1)" | bc
	fi
}



function asc2b64() {
	if [[ $1 ]]; then
		echo "obase=64 ; $(asc2dec $1)" | bc
	fi
}



function asc2b32() {
	if [[ $1 ]]; then
		echo "obase=32 ; $(asc2dec $1)" | bc
	fi
}



function asc2dec() {
	if [[ $1 ]]; then
		printf '%d\n' "'$1'"
	fi
}



function asc2hex() {
	if [[ $1 ]]; then
		echo "obase=16 ; $(asc2dec $1)" | bc
	fi
}



function asc2oct() {
	if [[ $1 ]]; then
		echo "obase=8 ; $(asc2dec $1)" | bc
	fi
}




###### temperature conversion
# Copyright 2007 - 2010 Christopher Bratusek
function cel2fah() {

  if [[ $1 ]]; then
	echo "scale=2; $1 * 1.8  + 32" | bc
  fi

}



function cel2kel() {

  if [[ $1 ]]; then
	echo "scale=2; $1 + 237.15" | bc
  fi

}



function fah2cel() {

  if [[ $1 ]]; then
	echo "scale=2 ; ( $1 - 32  ) / 1.8" | bc
  fi

}



function fah2kel() {

  if [[ $1 ]]; then
	echo "scale=2; ( $1 + 459.67 ) / 1.8 " | bc
  fi

}



function kel2cel() {

  if [[ $1 ]]; then
	echo "scale=2; $1 - 273.15" | bc
  fi

}



function kel2fah() {

  if [[ $1 ]]; then
	echo "scale=2; $1 * 1.8 - 459,67" | bc
  fi

}



###### Output an ASCII character given its decimal equivalent
function chr() { printf \\$(($1/64*100+$1%64/8*10+$1%8)); }



# a temperature in any of Fahrenheit, Celsius or Kelvin and receive the
# equivalent temperature in the other two units as the output.
# usage:	convertatemp F100 (if don't put F,C, or K, default is F)
function convertatemp()
{
if uname | grep 'SunOS'>/dev/null ; then
  echo "Yep, SunOS, let\'s fix this baby"
  PATH="/usr/xpg4/bin:$PATH"
fi
if [ $# -eq 0 ] ; then
  cat << EOF >&2
Usage: $0 temperature[F|C|K]
where the suffix:
   F	indicates input is in Fahrenheit (default)
   C	indicates input is in Celsius
   K	indicates input is in Kelvin
EOF
fi
unit="$(echo $1|sed -e 's/[-[[:digit:]]*//g' | tr '[:lower:]' '[:upper:]' )"
temp="$(echo $1|sed -e 's/[^-[[:digit:]]*//g')"
case ${unit:=F}
in
  F ) # Fahrenheit to Celsius formula:  Tc = (F -32 ) / 1.8
  farn="$temp"
  cels="$(echo "scale=2;($farn - 32) / 1.8" | bc)"
  kelv="$(echo "scale=2;$cels + 273.15" | bc)"
  ;;
  C ) # Celsius to Fahrenheit formula: Tf = (9/5)*Tc+32
  cels=$temp
  kelv="$(echo "scale=2;$cels + 273.15" | bc)"
  farn="$(echo "scale=2;((9/5) * $cels) + 32" | bc)"
  ;;
  K ) # Celsius = Kelvin + 273.15, then use Cels -> Fahr formula
  kelv=$temp
  cels="$(echo "scale=2; $kelv - 273.15" | bc)"
  farn="$(echo "scale=2; ((9/5) * $cels) + 32" | bc)"
esac
echo "Fahrenheit = $farn"
echo "Celsius    = $cels"
echo "Kelvin     = $kelv"
}



###### convert hexadecimal numbers to decimals
function dec()		{ printf "%d\n" $1; }



###### convert decimals to hexadecimal numbers
function hex()		{ printf "0x%08x\n" $1; }





###### print multiplication tables
function multitables()
{
for i in {1..9}; do for j in `seq 1 $i`; do echo -ne "${j}x${i}=$((j*i))\t"; done; echo; done
}



###### Pascal's triangle
function pascal() { l=15;for((i=0;i<$l;i++));do eval "a$i=($(pv=1;v=1;for((j=0;j<$l-$i;j++));do [ $i -eq 0 -o $j -eq 0 ]&&{ v=1 && pv=1; }||v=$((pv+a$((i-1))[$((j))]));echo -n "$v ";pv=$v;done;));";o="$(eval echo "$(for((k=0;k<=$i;k++)); do eval "echo -n \"\$((a\$((i-k))[k])) \""; done)")";echo "$o";s="${#o}"; done; } | while read l; do j=$((s-${#l}/2)); echo "$(while ((i++ < j)); do echo -n " ";done;)$l";done



###### convert phone numbers to letters/potentially english words
# Creator:	asmoore82
function phone2text()
{
echo -n "Enter number: "
read num
# Create a list of possibilites for expansion by the shell
# the "\}" is an ugly hack to get "}" into the replacment string -
# this is not a clean escape sequence - the litteral "\" is left behind!
num="${num//2/{a,b,c\}}"
num="${num//3/{d,e,f\}}"
num="${num//4/{g,h,i\}}"
num="${num//5/{j,k,l\}}"
num="${num//6/{m,n,o\}}"
num="${num//7/{p,q,r,s\}}"
num="${num//8/{t,u,v\}}"
num="${num//9/{w,x,y,z\}}"
# cleaup from the hack - remove all litteral \'s
num="${num//\\/}"
echo ""
echo "Possible words are:"
for word in $( eval echo "$num" )
do
    echo '>' "$word"
done
# End of File
}




###### generate prime numbers, without using arrays.
# script contributed by Stephane Chazelas.
function primes()
{
LIMIT=1000                    # Primes, 2 ... 1000.
Primes()
{
 (( n = $1 + 1 ))             # Bump to next integer.
 shift                        # Next parameter in list.
#  echo "_n=$n i=$i_"
 if (( n == LIMIT ))
 then echo $*
 return
 fi
 for i; do                    # "i" set to "@", previous values of $n.
#   echo "-n=$n i=$i-"
   (( i * i > n )) && break   # Optimization.
   (( n % i )) && continue    # Sift out non-primes using modulo operator.
   Primes $n $@               # Recursion inside loop.
   return
   done
   Primes $n $@ $n            #  Recursion outside loop.
                              #  Successively accumulate
			      #+ positional parameters.
                              #  "$@" is the accumulating list of primes.
}
Primes 1
}


###### convert to roman numerals
function roman-numeral()
{
python -c 'while True: print (lambda y,x=[],nums={ 1000:"M",900:"CM",500:"D",400:"CD",100:"C",90:"XC",
50:"L",40:"XL",10:"X",9:"IX",5:"V",4:"IV",1:"I"}: (lambda ro=(lambda : map(lambda g,r=lambda b:x.append(
y[-1]/b),t=lambda v:y.append(y[-1]%v):map(eval,["r(g)","t(g)"]),sorted(nums.keys())[::-1]))():"".join(
map(lambda fg: map(lambda ht: nums[ht],sorted(nums.keys())[::-1])[fg] * x[fg],range(len(x)))))())([int(
raw_input("Please enter a number between 1 and 4000: "))])'
}




###### finding the square root of numbers
function sqrt()
{
echo "sqrt ("$1")" | bc -l
}


##################################################
# Ask						 #
##################################################

function ask()
{
    echo -n "$@" '[y/n] ' ; read ans
    case "$ans" in
        y*|Y*) return 0 ;;
        *) return 1 ;;
    esac
}



############ Audio ############

###### rip audio from video
# ("$1" for output file & "$2" for input file)
function audioextract()
{
mplayer -ao pcm -vo null -vc dummy -dumpaudio -dumpfile "$1" "$2"
}



function flac2mp3()
# Author: Josh Bailey
# Email: jbsnake <at> <no spam> usalug.org
# call this like:
# flac2mp3 /path/to/source/file.flac /path/to/destination
# needs: getFileName function; flac encoder/decoder; lame
{
   local old_file="${1}"
   local new_dir="${2}"
   local short_filename=`getFileName "${old_file}"`
   local new_file="${short_filename:0:${#short_filename}-5}.mp3"

   flac -d -o - "${old_file}" | lame -b 320 -h - > "${new_dir}/${new_file}"
}



function flac2ogg()
# Author: Josh Bailey
# Email: jbsnake <at> <no spam> usalug.org
# call this like:
# flac2ogg /path/to/source/file.flac /path/to/destination
# needs: getFileName function; flac encoder/decoder; oggenc
{
   local old_file="${1}"
   local new_dir="${2}"
   local short_filename=`getFileName "${old_file}"`
   local new_file="${short_filename:0:${#short_filename}-5}.ogg"
   ###### get artist and album before release #########
   # flac -d -o - "${old_file}" | oggenc -a "$artist" -l "$album" -t "${title}" - -o "${new_dir}/${new_file}"
   ####################################################
   local title="${short_filename:0:${#short_filename}-4}"

   flac -d -o - "${old_file}" | oggenc -t "${title}" - -o "${new_dir}/${new_file}"
}



alias flvaudio='ffmpeg -i "$1" -f mp3 -vn -acodec copy output.mp3'			# extract sound from flv & make mp3



###### fix MP3 tags encoding (to UTF-8)
# batch fixes all MP3s in one directory
function mp3_tagging()
{
find . -iname "*.mp3" -execdir mid3iconv -e <encoding> {} \;
}



function ogg2mp3()
# Author: Josh Bailey
# Email: jbsnake <at> <no spam> usalug.org
# call this like:
# ogg2mp3 /path/to/source/file.flac /path/to/destination
# needs: getFileName function; oggdec; lame
{
   local old_file="${1}"
   local new_dir="${2}"
   local short_filename=`getFileName "${old_file}"`
   local new_file="${short_filename:0:${#short_filename}-4}.mp3"
   local info_string=`get_ogg_info "$old_file"`
   local cartist=`cut -d| -f1 ${info_string}`
   local ctitle=`cut -d| -f2 ${info_string}`
   local calbum=`cut -d| -f3 ${info_string}`
   local cgenre=`cut -d| -f4 ${info_string}`
   local cdate=`cut -d| -f5 ${info_string}`
   local ctracknumber=`cut -d| -f6 ${info_string}`

   oggdec "${old_file}" -o - | lame  -b 320 --tt "$ctitle" --ta "$cartist" --tl "$calbum" --ty $cdate --tn $ctracknumber --tg "$cgenre" -h - > "${new_dir}/${new_file}"
   sleep .5
}



function ogg_info()
# Author: Josh Bailey
# Email: jbsnake <at> <no spam> usalug.org
# call this like:
# ogg_info_string=`get_ogg_info "/path/to/file.ogg"`
# ofcourse the string would have to be parsed
# it is pipe | delimited
# in order artist, title, album, genre, date, and track number
# inStr function needed; vorbiscomment (comes with oggenc)
{
   local turn=""
   local index=0
   local item=""
   local cartist=""
   local ctitle=""
   local calbum=""
   local cgenre=""
   local cdate=""
   local ctracknumber=""

   vorbiscomment -l "$1" > info.lst
   for turn in artist title album genre date tracknumber
   do
      tmp_comment=`grep -i "$turn" info.lst`
      item=`inStr "=" "$tmp_comment"`
      comment=${tmp_comment:${item}+1}
      ((index++))
      case $index in
      1)   cartist="$comment";
         ;;
      2)   ctitle="$comment";
         ;;
      3)   calbum="$comment";
         ;;
      4)   cgenre="$comment";
         ;;
      5)   cdate="$comment";
         ;;
      6)   ctracknumber="$comment";
         ;;
      esac
   done
   info="${cartist}|${ctitle}|${calbum}|${cgenre}|${cdate}|${ctracknumber}"
   echo "${info}"
   rm -f info.lst
}



alias wma2mp3='for f in *.wma; do ffmpeg -i "$f" -ab 128k "${f%.wma}.mp3" -ab 128K; done'		# convert wma to mp3@128k



alias wma2ogg='for f in *.wma; do ffmpeg -i "$f" -ab 128k "${f%.wma}.ogg" -ab 128K; done'		# convert wma to ogg@128



alias wma2wav='for i in *.wma; do mplayer -vo null -vc dummy -af resample=44100 -ao pcm:waveheader:file="${i%.wma}.wav" "$i" ; done'	# convert wma to wav



###### record audio and use sox to eliminate silence
# outputs an ogg file that only contains the audio signal exceeding -45dB
# useful for recording radio scanner

function audiorecord-45dB()
{
rec -r 44100 -p | sox -p "audio_name-$(date '+%Y-%m-%d').ogg" silence -l 1 00:00:00.5 -45d -1 00:00:00.5 -45d
}




##################################################
# ~/ functions					 #
##################################################

function backupsfolder()
{
    if [ -d $HOME/backups_html ]; then
        chown -R $USER:www-data $HOME/backups_html
        chmod 755 $HOME/backups_html
        find $HOME/backups_html/ -type d -exec chmod 775 {} \;
        find $HOME/backups_html/ -type f -exec chmod 664 {} \;
        chmod 755 $HOME
    fi
}



function private()
{
    find $HOME -type d -exec chmod 700 {} \;
    find $HOME -type f -exec chmod 600 {} \;
    find $HOME/bin -type f -exec chmod +x {} \;
    find $HOME/.dropbox-dist/dropbox* -type f -exec chmod +x {} \;
}



function publicfolder()
{
    if [ -d $HOME/public_html ]; then
        chown -R $USER:www-data $HOME/public_html
        chmod 755 $HOME/public_html
        find $HOME/public_html/ -type d -exec chmod 775 {} \;
        find $HOME/public_html/ -type f -exec chmod 664 {} \;
        chmod 755 $HOME
    fi
}



function setperms()
{
    echo "setting proper permissions in ~/"
    private
    public
}



function wwwrc()
{
    alias mv="mv"
    mv -f ~/.[a-z]*.html ~/public_html/
    chmod 644 ~/public_html/.[a-z]*.html
    chown $USER:www-data ~/public_html/.[a-z]*.html
    alias mv="mv -i"
}





##################################################
# Creates a backup of the file passed as	 #
# parameter with the date and time		 #
##################################################

function bak()
{
  cp $1 $1_`date +%H:%M:%S_%d-%m-%Y`
}



##################################################
# Good bash tips for everyone			 #
##################################################

function bashtips() {
# copyright 2007 - 2010 Christopher Bratusek
cat <<EOF
DIRECTORIES
-----------
~-          Previous working directory
pushd tmp   Push tmp && cd tmp
popd        Pop && cd
GLOBBING AND OUTPUT SUBSTITUTION
--------------------------------
ls a[b-dx]e Globs abe, ace, ade, axe
ls a{c,bl}e Globs ace, able
\$(ls)      \`ls\` (but nestable!)
HISTORY MANIPULATION
--------------------
!!        Last command
!?foo     Last command containing \`foo'
^foo^bar^ Last command containing \`foo', but substitute \`bar'
!!:0      Last command word
!!:^      Last command's first argument
!\$       Last command's last argument
!!:*      Last command's arguments
!!:x-y    Arguments x to y of last command
C-s       search forwards in history
C-r       search backwards in history
LINE EDITING
------------
M-d     kill to end of word
C-w     kill to beginning of word
C-k     kill to end of line
C-u     kill to beginning of line
M-r     revert all modifications to current line
C-]     search forwards in line
M-C-]   search backwards in line
C-t     transpose characters
M-t     transpose words
M-u     uppercase word
M-l     lowercase word
M-c     capitalize word
COMPLETION
----------
M-/     complete filename
M-~     complete user name
M-@     complete host name
M-\$    complete variable name
M-!     complete command name
M-^     complete history
EOF
}




##################################################
# Clock - A bash clock that can run in your	 #
# terminal window.				 #
##################################################

###### binary clock
function bclock()
{
watch -n 1 'echo "obase=2;`date +%s`" | bc'
}



###### binary clock
function bclock2()
{
perl -e 'for(;;){@d=split("",`date +%H%M%S`);print"\r";for(0..5){printf"%.4b ",$d[$_]}sleep 1}'
}



function clock()
{
while true;do clear;echo "===========";date +"%r";echo "===========";sleep 1;done
}





##################################################
# Convert bluray to xvid			 #
##################################################

function bluray2xvid()
# example: bluray2xvid bluraydisc.m2ts desired_name.avi
{
mencoder $1 -oac mp3lame -lameopts cbr:br=128 -ofps 24 -vf harddup -vf scale=1280:720 -ovc xvid -xvidencopts fixed_quant=3 -o $2
}




##################################################
# Create box of '#' characters around given 	 #
# string					 #
##################################################

function box() { t="$1xxxx";c=${2:-#}; echo ${t//?/$c}; echo "$c $1 $c"; echo ${t//?/$c}; }






###### flip a single coin 1000 times and show results
function coin-flip()
{
SEED=$"(head -1 /dev/urandom | od -N 1 | awk '{ print $2 }')"
RANDOM=$SEED
SIDES=2          	# A coin has 2 sides.
MAXTHROWS=1000   	# Increase this if you have nothing better to do with your time.
throw=0         	# Throw count.
heads=0          	# Must initialize counts to zero,
tails=0          	# since an uninitialized variable is null, not zero.
function print_result()
{
echo
echo "heads =   $heads"
echo "tails =   $tails"
echo
}
function update_count()
{
case "$1" in
  0) let "heads += 1";; # Since coin has no "zero", this corresponds to 1.
  1) let "tails += 1";; # And this to 2, etc.
esac
}
echo
while [ "$throw" -lt "$MAXTHROWS" ]
do
  let "coin1 = RANDOM % $SIDES"
  update_count $coin1
  let "throw += 1"
done
print_result
echo "Out of a total of "$MAXTHROWS" tosses."
echo "Change \"MAXTHROWS=1000\" if you want a different number of tosses."
}



###### roll a single die of "$1" sides, just once
# default number of sides is 6
# written by Dallas Vogels
function one-die()
{
function roll_die() {
  # capture parameter
  declare -i DIE_SIDES=$1
  # check for die sides
  if [ ! $DIE_SIDES -gt 0 ]; then
    # default to 6
    DIE_SIDES=6
  fi
  # echo to screen
  echo $[ ( $RANDOM % $DIE_SIDES )  + 1 ]
}
# roll_die 10  # returns 1 to 10 as per 10 sides
# roll_die 2   # returns 1 or 2 as per 2 sides
roll_die "$1"
}



# example:	random 10	=	4
# copyright 2007 - 2010 Christopher Bratusek
function random() {
	if [[ $1 == -l ]]; then
		echo $(cat /dev/urandom | tr -cd '[:digit:]' | head -c ${2-5})
	elif [[ $1 == -r ]]; then
		echo $((RANDOM%${2}))
	else	echo $((RANDOM%${1}))
	fi
}



###### create random blank files
function randomblanks()
{
for ((  i = 0 ;  i < $1;  i++  )); do touch $RANDOM; done
}


###### Generates neverending list of random numbers
function randomnumbers()
{
while :
do
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
 echo $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM $RANDOM
done
}



###### rename a file with a random name
# The function will rename files but maintain their extensions.
# BUG: If a file doesn't have an extension it will end up with a dot at the end of the name.
# The parameter '8' for pwgen controls the length of filenames - eight random characters.
function rf() { for i in "$@"; do mv "$i" "$(pwgen 8 1).${i##*.}"; done }



###### roll a single die 1000 times and show results
function roll-die()
{
SEED=$"(head -1 /dev/urandom | od -N 1 | awk '{ print $2 }')"
RANDOM=$SEED
PIPS=6          	# A die has 6 pips.
MAXTHROWS=1000   	# Increase this if you have nothing better to do with your time.
throw=0         	# Throw count.
ones=0          	#  Must initialize counts to zero,
twos=0          	#+ since an uninitialized variable is null, not zero.
threes=0
fours=0
fives=0
sixes=0
function print_result()
{
echo
echo "ones =   $ones"
echo "twos =   $twos"
echo "threes = $threes"
echo "fours =  $fours"
echo "fives =  $fives"
echo "sixes =  $sixes"
echo
}
function update_count()
{
case "$1" in
  0) let "ones += 1";;   # Since die has no "zero", this corresponds to 1.
  1) let "twos += 1";;   # And this to 2, etc.
  2) let "threes += 1";;
  3) let "fours += 1";;
  4) let "fives += 1";;
  5) let "sixes += 1";;
esac
}
echo
while [ "$throw" -lt "$MAXTHROWS" ]
do
  let "die1 = RANDOM % $PIPS"
  update_count $die1
  let "throw += 1"
done
print_result
echo "Out of a total of "$MAXTHROWS" rolls."
echo "Change \"MAXTHROWS=1000\" if you want a different number of rolls."
}



##################################################
# Backup a file with a date-time stamp		 #
##################################################

# Usage "bu filename.txt"
function bu() { cp $1 ${1}-`date +%Y%m%d%H%M`.backup ; }



function buf() { cp -v $1 ${1/${1%%.*}/$f-$(date +"%Y%m%d_%H%M%S")}; }




##################################################
# Copy & paste files and folders from the	 #
# command line					 #
##################################################

###### Usage: "ccopy FILE/FOLDER#1 FILE/FOLDER#2 FILE/FOLDER#3 FILE/FOLDER#4 ..."
# Note: You must 'cd' into the folder first ("whatever" works, while "~/myfolder/whatever" doesn't)
function ccopy() { for i in $*; do cp -a $i /tmp/ccopy.$i; done }
alias cpaste="ls -d /tmp/ccopy* | sed 's|[^\.]*.\.||' | xargs -I % mv /tmp/ccopy.% ./%"




##################################################
# Analyze your bash usage			 #
##################################################

function check_()
{
cut -f1 -d" " .bash_history | sort | uniq -c | sort -nr | head -n 30
}





##################################################
# Commandlinefu.com and Shell-fu.org stuff	 #
##################################################

###### Search commandlinefu.com from the command line
# using the API
# Usage: cmdfu hello world
function cmdfu() { curl "http://www.commandlinefu.com/commands/matching/$@/$(echo -n $@ | openssl base64)/plaintext" --silent | sed "s/\(^#.*\)/\x1b[32m\1\x1b[0m/g" | less -R ; }



# function cmdfu() { curl "http://www.commandlinefu.com/commands/matching/$@/$(echo -n $@ | openssl base64)/plaintext"; }



###### automatically downloads all commands from http://www.commandlinefu.com into a single text file
alias cmdfu_dl='mkdir /tmp/commandlinefu && cd /tmp/commandlinefu && curl -O http://www.commandlinefu.com/commands/browse/sort-by-votes/plaintext/[0-2400:25] && ls -1 | sort -n | while read mork ; do cat $mork >> commandlinefu.txt ; ls -ald $mork; done && mv commandlinefu.txt $HOME && rm -rf /tmp/commandlinefu'



###### find a CommandlineFu users average command rating
function cmdfu_rating()
{
wget -qO- www.commandlinefu.com/commands/by/PhillipNordwall | awk -F\> '/class="num-votes"/{S+=$2; I++}END{print S/I}'
}



function cmdfu_rating_()
{
curl -s www.commandlinefu.com/commands/by/PhillipNordwall | awk -F\> '/class="num-votes"/{S+=$2; I++}END{print S/I}'
}



##### key binding to search commandlinefu.com
function ds_() { echo -n "search : "; read ST; EST=`php -r "echo rawurlencode('$ST');"`; B64=`echo -n $ST| openssl enc -base64`; curl -s "http://www.commandlinefu.com/commands/matching/$EST/$B64/plaintext" | less -p "$ST"; } ; bind '"\C-k"':"\"ds\C-m\""



###### command examples from shell-fu
function examples() { lynx -width=$COLUMNS -nonumbers -dump "http://www.shell-fu.org/lister.php?tag=$1" | \
sed -n '/^[a-zA-Z]/,$p' | egrep -v '^http|^javas|View Comm|HIDE|] \+|to Share|^ +\*|^ +[HV][a-z]* l|^ .*efu.*ep.*!$' | \
sed -e '/^  *__*/N;s/\n$//g' | less -r; }



###### fuman, an alternative to the 'man' command that shows commandlinefu.com examples
function fuman() { lynx -width=$COLUMNS -nonumbers -dump "http://www.commandlinefu.com/commands/using/$1" |sed '/Add to favourites/,/This is sample output/!d' |sed 's/ *Add to favourites/----/' |less -r; }



###### Random Commandlinefu command
function fur() { curl -sL 'http://www.commandlinefu.com/commands/random/plaintext' | grep -v "^# commandlinefu" ; }



###### Prepare a commandlinefu command
function goclf()
{
type "$1" | sed '1d' | tr -d "\n" | tr -s '[:space:]'; echo
}




##################################################
# Compress stuff				 #
##################################################

function compress_() {
   # Credit goes to: Daenyth
   FILE=$1
   shift
   case $FILE in
      *.tar.bz2) tar cjf $FILE $*  ;;
      *.tar.gz)  tar czf $FILE $*  ;;
      *.tgz)     tar czf $FILE $*  ;;
      *.zip)     zip $FILE $*      ;;
      *.rar)     rar $FILE $*      ;;
      *)         echo "Filetype not recognized" ;;
   esac
}



##################################################
# Sets the compression level for file-roller	 #
##################################################

function compression_level()
{
echo -n "Please enter the number for the compression level desired:

(1) very_fast
(2) fast
(3) normal
(4) maximum

Press 'Enter' for default (default is '3')...

"
read COMPRESSION_LEVEL_NUMBER
# extra blank space
echo "
"
# default
if [[ -z $COMPRESSION_LEVEL_NUMBER ]] ; then
# If no COMPRESSION_LEVEL passed, default to '3'
    COMPRESSION_LEVEL=normal
fi
# preset
if [[ $COMPRESSION_LEVEL_NUMBER = 1 ]] ; then
    COMPRESSION_LEVEL=very_fast
fi
if [[ $COMPRESSION_LEVEL_NUMBER = 2 ]] ; then
    COMPRESSION_LEVEL=fast
fi
if [[ $COMPRESSION_LEVEL_NUMBER = 3 ]] ; then
    COMPRESSION_LEVEL=normal
fi
if [[ $COMPRESSION_LEVEL_NUMBER = 4 ]] ; then
    COMPRESSION_LEVEL=maximum
fi

gconftool-2 --set /apps/file-roller/general/compression_level --type string "$COMPRESSION_LEVEL"
}



##################################################
# Convert to avi				 #
##################################################

function conv2avi() {
	# copyright 2007 - 2010 Christopher Bratusek
	if [[ $(which mencoder-mt) != "" ]]; then
	mencoder-mt "$1" -lavdopts threads=8 \
	  -ovc xvid -xvidencopts fixed_quant=4 -of avi \
	  -oac mp3lame -lameopts vbr=3 \
	  -o "$1".avi
	else
	mencoder "$1" -lavdopts \
	  -ovc xvid -xvidencopts fixed_quant=4 -of avi \
	  -oac mp3lame -lameopts vbr=3 \
	  -o "$1".avi
	fi
}



##################################################
# Copies currently played song in Audacious to 	 #
# selected directory				 #
##################################################

function cp_mp3_to() { PID=`pidof audacious2`; FILEPATH=`lsof -p $PID| grep mp3| sed s/[^\/]*//`; cp "$FILEPATH" "$1"; }



##################################################
# Cp with progress bar (using pv)		 #
##################################################

function cp_p() {
	if [ `echo "$2" | grep ".*\/$"` ]
	then
		pv "$1" > "$2""$1"
	else
		pv "$1" > "$2"/"$1"
	fi
}



##################################################
# Create User List				 #
##################################################

function create_user_list()
# Author: Josh Bailey
# Email: jbsnake <at> <no spam> usalug.org
# further tweaked by: jsz
# usage: create_user_list
{
    local users u
    while IFS=: read -r u _; do
        users+=("$u")
    done
    printf '%s\n' "${users[@]:1}"
}



##################################################
# Print a cron formatted time for 2 minutes in 	 #
# the future (for crontab testing)		 #
##################################################

function crontest() { date '-d +2 minutes' +'%M %k %d %m *'; }



##################################################
# Encryption / decryption			 #
##################################################

###### do twice to decrypt
# copyright 2007 - 2010 Christopher Bratusek
function crypt() {
	if [[ -e "$1" ]]; then
		tr a-zA-Z n-za-mN-ZA-M < "$1" > "$1".crypt
		rm -f "$1"
		mv "$1".crypt "$1"
	fi
}



###### basic encrypt / decrypt
# example: "encry filename" or "decry filename"
function encry()
{
gpg -ac --no-options "$1"
}



function decry()
{
gpg --no-options "$1"
}



###### More advanced encryption / decryption
# example: "encrypt filename" or "decrypt filename"
function encrypt()
{
# Author: Martin Langasek <cz4160@gmail.com>
case $LANG in
  cs* )
    err_title="Chyba"
    err_files="Neoznačen soubor"
    encrypt="Šifrovat"
    decrypt="Dešifrovat"
    file_msg="soubor:"
    pass_msg="Vložte heslo";;
  * )
    err_title="Error"
    err_files="No file selected"
    encrypt="Encrypt"
    decrypt="Decrypt"
    file_msg="file:"
    pass_msg="Enter passphrase";;
esac
if [ "$1" != "" ]
then
  i=1
  file=`echo "$1" | sed ''$i'!d'`
  while [ "$file" != "" ]
  do
    ext=`echo "$file" | grep [.]gpg$ 2>&1`
    if [ "$ext" != "" ]
    then
      pass_decrypt=`zenity --entry --entry-text "$pass_decrypt" --hide-text --title "$pass_msg" --text "$decrypt $file_msg ${file##*/}" "" 2>&1`
      if [ "$pass_decrypt" != "" ]
      then
        output=${file%.*}
        echo "$pass_decrypt" | gpg -o "$output" --batch --passphrase-fd 0 -d "$file"
      fi
    else
      pass_encrypt=`zenity --entry --hide-text --entry-text "$pass_encrypt" --title "$pass_msg" --text "$encrypt $file_msg ${file##*/}" "" 2>&1`
      if [ "$pass_encrypt" != "" ]
      then
        echo "$pass_encrypt" | gpg --batch --passphrase-fd 0 --cipher-algo aes256 -c "$file"
      fi
    fi
    i=$(($i+1))
    file=`echo "$1" | sed ''$i'!d'`
  done
else
  zenity --error --title "$err_title" --text "$err_files"
fi
}



alias decrypt='encrypt'



###### rot13 ("rotate alphabet 13 places" Caesar-cypher encryption)
function rot13()
{
    if [ $# -lt 1 ] || [ $# -gt 1 ]; then
        echo "Seriously?  You don't know what rot13 does?"
    else
        echo $@ | tr A-Za-z N-ZA-Mn-za-m
    fi
}



###### rot47 ("rotate ASCII characters from '!" to '~' 47 places" Caesar-cypher encryption)
function rot47()
{
    if [ $# -lt 1 ] || [ $# -gt 1 ]; then
        echo "Seriously?  You don't know what rot47 does?"
    else
        echo $@ | tr '!-~' 'P-~!-O'
    fi
}



##################################################
# Google stuff					 #
##################################################

###### convert currencies
# usage:	currency_convert 1 usd eur
# for currency shorthand: http://www.xe.com/currency/
function currency_convert() { wget -qO- "http://www.google.com/finance/converter?a=$1&from=$2&to=$3&hl=es" | sed '/res/!d;s/<[^>]*>//g'; }



function currency_convert_() { curl "http://www.xe.com/wap/2co/convert.cgi?Amount=$1&From=$2&To=$3" -A "Mozilla" -s | sed -n "s/.*>\(.*\) $3<.*/\1/p"; }



function currency_convert_help() {
cat <<EOF
AED - Emirati Dirham
AFN - Afghan Afghani
ALL - Albanian Lek
AMD - Armenian Dram
ANG - Dutch Guilder
AOA - Angolan Kwanza
ARS - Argentine Peso
AUD - Australian Dollar
AWG - Aruban or Dutch Guilder
AZN - Azerbaijani New Manat
BAM - Bosnian Convertible Marka
BBD - Barbadian or Bajan Dollar
BDT - Bangladeshi Taka
BGN - Bulgarian Lev
BHD - Bahraini Dinar
BIF - Burundian Franc
BMD - Bermudian Dollar
BND - Bruneian Dollar
BOB - Bolivian Boliviano
BRL - Brazilian Real
BSD - Bahamian Dollar
BTN - Bhutanese Ngultrum
BWP - Batswana Pula
BYR - Belarusian Ruble
BZD - Belizean Dollar
CAD - Canadian Dollar
CDF - Congolese Franc
CHF - Swiss Franc
CLP - Chilean Peso
CNY - Chinese Yuan Renminbi
COP - Colombian Peso
CRC - Costa Rican Colon
CUC - Cuban Convertible Peso
CUP - Cuban Peso
CVE - Cape Verdean Escudo
CZK - Czech Koruna
DJF - Djiboutian Franc
DKK - Danish Krone
DOP - Dominican Peso
DZD - Algerian Dinar
EEK - Estonian Kroon
EGP - Egyptian Pound
ERN - Eritrean Nakfa
ETB - Ethiopian Birr
EUR - Euro
FJD - Fijian Dollar
FKP - Falkland Island Pound
GBP - British Pound
GEL - Georgian Lari
GGP - Guernsey Pound
GHS - Ghanaian Cedi
GIP - Gibraltar Pound
GMD - Gambian Dalasi
GNF - Guinean Franc
GTQ - Guatemalan Quetzal
GYD - Guyanese Dollar
HKD - Hong Kong Dollar
HNL - Honduran Lempira
HRK - Croatian Kuna
HTG - Haitian Gourde
HUF - Hungarian Forint
IDR - Indonesian Rupiah
ILS - Israeli Shekel
IMP - Isle of Man Pound
INR - Indian Rupee
IQD - Iraqi Dinar
IRR - Iranian Rial
ISK - Icelandic Krona
JEP - Jersey Pound
JMD - Jamaican Dollar
JOD - Jordanian Dinar
JPY - Japanese Yen
KES - Kenyan Shilling
KGS - Kyrgyzstani Som
KHR - Cambodian Riel
KMF - Comoran Franc
KPW - Korean Won
KRW - Korean Won
KWD - Kuwaiti Dinar
KYD - Caymanian Dollar
KZT - Kazakhstani Tenge
LAK - Lao or Laotian Kip
LBP - Lebanese Pound
LKR - Sri Lankan Rupee
LRD - Liberian Dollar
LSL - Basotho Loti
LTL - Lithuanian Litas
LVL - Latvian Lat
LYD - Libyan Dinar
MAD - Moroccan Dirham
MDL - Moldovan Leu
MGA - Malagasy Ariary
MKD - Macedonian Denar
MMK - Burmese Kyat
MNT - Mongolian Tughrik
MOP - Macau Pataca
MRO - Mauritian Ouguiya
MUR - Mauritian Rupee
MVR - Maldivian Rufiyaa
MWK - Malawian Kwacha
MXN - Mexican Peso
MYR - Malaysian Ringgit
MZN - Mozambican Metical
NAD - Namibian Dollar
NGN - Nigerian Naira
NIO - Nicaraguan Cordoba
NOK - Norwegian Krone
NPR - Nepalese Rupee
NZD - New Zealand Dollar
OMR - Omani Rial
PAB - Panamanian Balboa
PEN - Peruvian Nuevo Sol
PGK - Papua New Guinean Kina
PHP - Philippine Peso
PKR - Pakistani Rupee
PLN - Polish Zloty
PYG - Paraguayan Guarani
QAR - Qatari Riyal
RON - Romanian New Leu
RSD - Serbian Dinar
RUB - Russian Ruble
RWF - Rwandan Franc
SAR - Saudi or Saudi Arabian Riyal
SBD - Solomon Islander Dollar
SCR - Seychellois Rupee
SDG - Sudanese Pound
SEK - Swedish Krona
SGD - Singapore Dollar
SHP - Saint Helenian Pound
SLL - Sierra Leonean Leone
SOS - Somali Shilling
SPL - Seborgan Luigino
SRD - Surinamese Dollar
STD - Sao Tomean Dobra
SVC - Salvadoran Colon
SYP - Syrian Pound
SZL - Swazi Lilangeni
THB - Thai Baht
TJS - Tajikistani Somoni
TMT - Turkmenistani Manat
TND - Tunisian Dinar
TOP - Tongan Pa'anga
TRY - Turkish Lira
TTD - Trinidadian Dollar
TVD - Tuvaluan Dollar
TWD - Taiwan New Dollar
TZS - Tanzanian Shilling
UAH - Ukrainian Hryvna
UGX - Ugandan Shilling
USD - US Dollar
UYU - Uruguayan Peso
UZS - Uzbekistani Som
VEF - Venezuelan Bolivar Fuerte
VND - Vietnamese Dong
VUV - Ni-Vanuatu Vatu
WST - Samoan Tala
XAF - Central African CFA Franc BEAC
XCD - East Caribbean Dollar
XDR - IMF Special Drawing Rights
XOF - CFA Franc
XPF - CFP Franc
YER - Yemeni Rial
ZAR - South African Rand
ZMK - Zambian Kwacha
ZWD - Zimbabwean Dollar
EOF
}



###### define a word - USAGE: define dog
function define() {
  local LNG=$(echo $LANG | cut -d '_' -f 1)
  local CHARSET=$(echo $LANG | cut -d '.' -f 2)
  lynx -accept_all_cookies -dump -hiddenlinks=ignore -nonumbers -assume_charset="$CHARSET" -display_charset="$CHARSET" "http://www.google.com/search?hl=${LNG}&q=define%3A+${1}&btnG=Google+Search" | grep -m 5 -C 2 -A 5 -w "*" > /tmp/define
  if [ ! -s /tmp/define ]; then
    echo "Sorry, google doesn't know this one..."
    rm -f /tmp/define
    return 1
  else
    cat /tmp/define | grep -v Search
    echo ""
  fi
  rm -f /tmp/define
  return 0
}



###### detect language of a string
function detectlanguage() { curl -s "http://ajax.googleapis.com/ajax/services/language/detect?v=1.0&q=$@" | sed 's/{"responseData": {"language":"\([^"]*\)".*/\1\n/'; }



###### find a location's coordinates
# usage:	findlocation "Las Vegas, Nevada" = coordinates: [ -115.1728160, 36.1146460, 0 ]
function findlocation() { place=`echo $1 | sed 's/ /%20/g'` ; curl -s "http://maps.google.com/maps/geo?output=json&oe=utf-8&q=$place" | grep -e "address" -e "coordinates" | sed -e 's/^ *//' -e 's/"//g' -e 's/address/Full Address/';}



###### your GeoIP location on Google Maps
function geoipme()
{
curl -s http://geoiplookup.wikimedia.org/|awk -F, '{print $3,$4}'|awk -F'"' '{print "http://maps.google.com/maps?q="$4 "," $8}'
}



###### Google search (example: google dog)
function google() {
firefox "http://www.google.com/search?&num=100&q=${@}" &
}



###### Google chart
function google_chart()
{
wget -O chart.png 'http://chart.googleapis.com/chart?chs=250x100&chd=t:60,40&cht=p3&chl=Hello|World'
}



###### Google search (example: google dog)
function google-fonts() {
# Google-Fonts.sh
# Version: 		0.1
# Last modified: 	04 November 2011
# License:		GPLv3+
# Creator:		Inameiname
#
# Credit also goes to Michalis Georgiou
# <mechmg93@gmail.com> for his original
# google-font script and to Andrew
# http://www.webupd8.org <andrew@webupd8.org> for
# his further modification of it.
#
# Descripton:
# For those who want an extremely easy method to
# download and install the entire Google font
# repository.
###### Installation of Mercurial Needed for Downloading of Fonts ######
sudo apt-get install mercurial
###### Setting of Default Directories ######
_hgroot="https://googlefontdirectory.googlecode.com/hg/"
_hgrepo="googlefontdirectory"
_hgoutdir="google-fonts"
###### Google Font Choice Decision ######
echo "
"
echo -n "What do you want to do with the fonts from Google
once they are downloaded?:

(1)  Download Only (and keep all fonts in a single folder)
(2)  Download Only (and keep all fonts in separate folders (pure hg copy))
(3)  Download and Install

Press 'Enter' for default (default is '1')...

"
read GOOGLE_FONT_CHOICE
###### Actual Downloading of the Google Fonts ######
if [ ! -d $HOME/$_hgrepo ] ; then
echo "
"
echo "Connecting to Mercurial server...."
if [ -d $HOME/$_hgrepo ] ; then
	cd $HOME/$_hgrepo
	hg pull -u || return 1
	echo "The local files have been updated."
	cd ..
else
	hg clone $_hgroot $HOME/$_hgrepo || return 1
fi
echo "Mercurial checkout done or server timeout"
echo "
"
else
echo "The directory $HOME/$_hgrepo already exists."
echo ""
echo "No need to redownload all of the Google fonts."
fi
###### Google Font Choice Selection ######
###### default
if [[ -z $GOOGLE_FONT_CHOICE ]] ; then
	# If no file passed, default to 1
	mkdir -p $HOME/$_hgoutdir/
	find $HOME/$_hgrepo/ -name "*.ttf"|xargs -I{} bash -c "cp -rf \"{}\" $HOME/$_hgoutdir/"
	rm -rf $HOME/$_hgrepo/
fi
###### preset
if [[ $GOOGLE_FONT_CHOICE = 1 ]] ; then
	mkdir -p $HOME/$_hgoutdir/
	find $HOME/$_hgrepo/ -name "*.ttf"|xargs -I{} bash -c "cp -rf \"{}\" $HOME/$_hgoutdir/"
	rm -rf $HOME/$_hgrepo/
fi
if [[ $GOOGLE_FONT_CHOICE = 2 ]] ; then
	mv $HOME/$_hgrepo/ $HOME/$_hgoutdir/
fi
if [[ $GOOGLE_FONT_CHOICE = 3 ]] ; then
	sudo mkdir -p /usr/share/fonts/truetype/google-fonts/
	find $HOME/$_hgrepo/ -name "*.ttf" -exec sudo install -m644 {} /usr/share/fonts/truetype/google-fonts/ \; || return 1
	fc-cache -f > /dev/null
	rm -rf $HOME/$_hgrepo/
fi
###### Wrap Up ######
echo "
"
echo "done."
echo "
"
read -sn 1 -p "You have finished downloading/installing all the Google Fonts currently available. Press any key to finish...
"
}



###### get Google PageRank
function pagerank()
{
curl pagerank.bz/$1
}



###### Google text-to-speech in mp3/wav format
function say() { mplayer -user-agent Mozilla "http://translate.google.com/translate_tts?tl=en&q=$(echo $* | sed 's#\ #\+#g')" > /dev/null 2>&1 ; }



function say_()
{
# Saironiq's bash script
# Usage: say_ en lol # says "lol" in english ; somecommand | say_ fr - # read text to say from a pipe
# requires madplay: sudo apt-get install madplay
lang=$1
shift
if [ "$1" = "-" ]
then
  read text
  echo $text
else
  text=$*
fi
len=`expr length "$text"`
if [ -z "$text" ] ; then
        echo "Please specify string to translate (up to 100 characters incl.)."
        exit 4
elif [ "$len" -gt "100" ] ; then
        echo "Can't translate more than 100 characters at once! (entered $len)"
        exit 2
fi
wget -qU Mozilla -O - "http://translate.google.com/translate_tts?tl=$lang&q=$text" | madplay -Q -o wave:- - | aplay -q -
}



###### translate a word using Google
# usage: translate <phrase> <output-language>
# example: translate "hello" es = hola (will auto-detect source language)
# for a list of language codes: http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
function translate() { wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=%7C${2:-en}" | sed 's/.*{"translatedText":"\([^"]*\)".*/\1\n/'; }



function translate_help() {
cat <<EOF
Language	ISO
(Afan) Oromo	om
Abkhazian	ab
Afar		aa
Afrikaans	af
Albanian	sq
Amharic		am
Arabic		ar
Armenian	hy
Assamese	as
Aymara		ay
Azerbaijani	az
Bashkir		ba
Basque		eu
Bengali		bn
Bhutani		dz
Bihari		bh
Bislama		bi
Breton		br
Bulgarian	bg
Burmese		my
Byelorussian	be
Cambodian	km
Catalan		ca
Chinese		zh
Corsican	co
Croatian	hr
Czech		cs
Danish		da
Dutch		nl
English		en
Esperanto	eo
Estonian	et
Faeroese	fo
Fiji		fj
Finnish		fi
French		fr
Frisian		fy
Galician	gl
Georgian	ka
German		de
Greek		el
Greenlandic	kl
Guarani		gn
Gujarati	gu
Hausa		ha
Hebrew 		he
(former iw)
Hindi		hi
Hungarian	hu
Icelandic	is
Indonesian 	id
(former in)
Interlingua	ia
Interlingue	ie
Inupiak		ik
Inuktitut 	iu
(Eskimo)
Irish		ga
Italian		it
Japanese	ja
Javanese	jw
Kannada		kn
Kashmiri	ks
Kazakh		kk
Kinyarwanda	rw
Kirghiz		ky
Kirundi		rn
Korean		ko
Kurdish		ku
Laothian	lo
Latin		la
Latvian, 	lv
Lettish
Lingala		ln
Lithuanian	lt
Macedonian	mk
Malagasy	mg
Malay		ms
Malayalam	ml
Maltese		mt
Maori		mi
Marathi		mr
Moldavian	mo
Mongolian	mn
Nauru		na
Nepali		ne
Norwegian	no
Occitan		oc
Oriya		or
Pashto, Pushto	ps
Persian		fa
Polish		pl
Portuguese	pt
Punjabi		pa
Quechua		qu
Rhaeto-Romance	rm
Romanian	ro
Russian		ru
Samoan		sm
Sangro		sg
Sanskrit	sa
Scots Gaelic	gd
Serbian		sr
Serbo-Croatian	sh
Sesotho		st
Setswana	tn
Shona		sn
Sindhi		sd
Singhalese	si
Siswati		ss
Slovak		sk
Slovenian	sl
Somali		so
Spanish		es
Sudanese	su
Swahili		sw
Swedish		sv
Tagalog		tl
Tajik		tg
Tamil		ta
Tatar		tt
Tegulu		te
Thai		th
Tibetan		bo
Tigrinya	ti
Tonga		to
Tsonga		ts
Turkish		tr
Turkmen		tk
Twi		tw
Uigur		ug
Ukrainian	uk
Urdu		ur
Uzbek		uz
Vietnamese	vi
Volapuk		vo
Welch		cy
Wolof		wo
Xhosa		xh
Yiddish 	yi
(former ji)
Yoruba		yo
Zhuang		za
Zulu		zu
EOF
}





##################################################
# Stuff for easy debian package extracting,	 #
# making, remaking, and uploading 		 #
##################################################

###### deb extraction- extracts a deb file & organizes for easy
# deb manipulation and repacking using "debremaker"
function debextract()
{
    read -sn 1 -p "Press any key to continue...
"
    # Set IFS so that it won't consider spaces as entry separators.  Without this, spaces in file/folder names can make the loop go wacky.
    IFS=$'\n'
    NEWDIRNAME=${1%.*}
    FILENAME=${1##*/}
    NAME=${1##*/.*}
    mkdir "$NEWDIRNAME"
    cp -fv -R "$1" "$NEWDIRNAME"
    cd "$NEWDIRNAME"
    ar vx "$FILENAME"
    rm -fv -R "$FILENAME"
    for FILE in *.tar.gz; do tar xvpf $FILE; done
    for FILE in *.tar.lzma; do tar xvpf $FILE; done
    rm -fv -R "control.tar.gz"
    rm -fv -R "data.tar.gz"
    rm -fv -R "data.tar.lzma"
    rm -fv -R "debian-binary"
    mkdir "DEBIAN"
    mv -fv "changelog" "DEBIAN"
    mv -fv "config" "DEBIAN"
    mv -fv "conffiles" "DEBIAN"
    mv -fv "control" "DEBIAN"
    mv -fv "copyright" "DEBIAN"
    mv -fv "postinst" "DEBIAN"
    mv -fv "preinst" "DEBIAN"
    mv -fv "prerm" "DEBIAN"
    mv -fv "postrm" "DEBIAN"
    mv -fv "rules" "DEBIAN"
    mv -fv "shlibs" "DEBIAN"
    mv -fv "templates" "DEBIAN"
    mv -fv "triggers" "DEBIAN"
    mv -fv ".svn" "DEBIAN"
    rm -fv -R "md5sums"
    echo "Finished Successfully"
}

##################################################
# Lists unique IPs currently connected to 	 #
# logged-in system & how many concurrent 	 #
# connections each IP has			 #
##################################################

function doscheck()
{
"netstat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n"
}




##################################################
# CIA world fact book				 #
##################################################

function fact() {
    dict -d world02 $@
}



##################################################
# Passwording					 #
##################################################

###### fake name and pass
function fakepass()
{
  local l=8
  [ -n "$1" ] && l=$1
  dd if=/dev/urandom count=1 2> /dev/null | uuencode -m - | head -n 2 | tail -n 1 | cut -c $l
}



alias fakename='nc koeln.ccc.de 23 | cut -d \  -f 4,5'



###### password file
function pw()
{
    if [ "$OS" = "Linux" ]; then
        gpg $HOME/priv.asc
        vi -n $HOME/priv
        gpg -ea $HOME/priv
        wipe -f $HOME/priv
    elif [ "$OS" = "Darwin" ]; then
        gpg $HOME/Documents/priv.asc
        vi -n $HOME/Documents/priv
        gpg -ea $HOME/Documents/priv
        srm -f $HOME/Documents/priv
    fi
}



###### generate a random password
#   $1 = number of characters; defaults to 32
#   $2 = include special characters; 1 = yes, 0 = no; defaults to 1
# copyright 2007 - 2010 Christopher Bratusek
function randompw() {
	if [[ $2 == "!" ]]; then
		echo $(cat /dev/urandom | tr -cd '[:graph:]' | head -c ${1:-32})
	else	echo $(cat /dev/urandom | tr -cd '[:alnum:]' | head -c ${1:-32})
	fi
}



###### generate a random left-hand password
alias randompwl='</dev/urandom tr -dc '12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c8; echo ""'



###### generate a unique and secure password for every website that you login to
function sitepass() { echo -n "$@" |  md5sum | sha1sum | sha224sum | sha256sum | sha384sum | sha512sum | gzip - | strings -n 1 | tr -d "[:space:]"  | tr -s '[:print:]' | tr '!-~' 'P-~!-O' | rev | cut -b 2-11; history -d $(($HISTCMD-1)); }



###### generates a unique and secure password with SALT for every website that you login to
function sitepass2()
{
salt="this_salt";pass=`echo -n "$@"`;for i in {1..500};do pass=`echo -n $pass$salt|sha512sum`;done;echo$pass|gzip -|strings -n 1|tr -d "[:space:]"|tr -s '[:print:]' |tr '!-~' 'P-~!-O'|rev|cut -b 2-15;history -d $(($HISTCMD-1));
}



###### trunc	password
function trunc_pwd()
# copyright 2007 - 2010 Christopher Bratusek
{
	case $1 in
		*help )
			echo -e "\n${ewhite}Usage:\n"
			echo -e "${eorange}trunc_pwd ${ewhite}|${egreen} ! no options !\n"
			tput sgr0
		;;
		* )
			pwdmaxlen=$(get_key pwdmaxlength)
			trunc_symbol=$(get_key pwdchar)
			dirchar=$(get_key dirchar)
			newsepacolor=$(echo $sepacolor | sed -e 's/\\\[//g' -e 's/\\\]//g')
			newwdircolor=$(echo $wdircolor | sed -e 's/\\\[//g' -e 's/\\\]//g')
			newpscoloror=$(echo $pscolor | sed -e 's/\\\[//g' -e 's/\\\]//g')
			if [ ${#PWD} -gt $pwdmaxlen ]; then
				pwdoffset=$(( ${#PWD} - $pwdmaxlen ))
				if [[ $pstyle_supported == true ]]; then
					xPWD="$newpscoloror${trunc_symbol}${PWD:$pwdoffset:$pwdmaxlen}"
				else	xPWD="${trunc_symbol}${PWD:$pwdoffset:$pwdmaxlen}"
				fi
				if [[ $enabcol == true && $pstyle_supported == true ]]; then
					newPWD="${xPWD//\//$newsepacolor$dirchar$newwdircolor}"
				else	newPWD="${xPWD//\//$dirchar}"
				fi
			else
				if [[ $enabcol == true && $pstyle_supported == true ]]; then
				newPWD="${PWD//\//$newsepacolor$dirchar$newwdircolor}"
			else	newPWD="${PWD//\//$dirchar}"
			fi
			fi
			echo -e $newPWD
		;;
	esac
}



##################################################
# Find a file(s) ...				 #
##################################################

###### ... with pattern $1 in name and Execute $2 on it
function fe() { find . -type f -iname '*'$1'*' -exec "${2:-file}" {} \;  ; }



###### ... under the current directory
function ff() { /usr/bin/find . -name "$@" ; }



###### ... whose name ends with a given string
function ffe() { /usr/bin/find . -name '*'"$@" ; }



###### ... fast find (by filename; uses sh, less and sed)
function ffind() { local a=$1; local b=$2; local c="$a"*/*"$b"*; case $# in [01])echo usage: ff drive string [match-no\(s\)];; 2)printf "%s\n" $c|less -SN;; 3)less $(printf "%s\n" $c|sed -n "$3"p|tr '\n' ' ');; esac; }



###### ... whose name starts with a given string
function ffs() { /usr/bin/find . -name "$@"'*' ; }



###### ... larger than a certain size (in bytes)
function find_larger() { find . -type f -size +${1}c ; }



###### find a file with a pattern in name in the local directory
function fp()
{
    find . -type f -iname '*'$*'*' -ls ;
}



###### find pattern in a set of files and highlight them
function fstr()
{
    OPTIND=1
    local case=""
    local usage="fstr: find string in files.
Usage: fstr [-i] \"pattern\" [\"filename pattern\"] "
    while getopts :it opt
    do
        case "$opt" in
        i) case="-i " ;;
        *) echo "$usage"; return;;
        esac
    done
    shift $(( $OPTIND - 1 ))
    if [ "$#" -lt 1 ]; then
        echo "$usage"
        return;
    fi
    local SMSO=$(tput smso)
    local RMSO=$(tput rmso)
    find . -type f -name "${2:-*}" -print0 | xargs -0 grep -sn ${case} "$1" 2>&- | \
sed "s/$1/${SMSO}\0${RMSO}/gI" | more
}



###### searches through the text of all the files in your current directory
# http://seanp2k.com/?p=13
# Good for debugging a PHP script you didn't write and can't trackdown where MySQL connect string actually is
# function grip() {
# grep -ir "$1″ "$PWD"
# }



###### ... who is the newest file in a directory
function newest() { find ${1:-\.} -type f |xargs ls -lrt ; }



##################################################
# Festival - text-to-speech 			 #
##################################################

###### requires festival: sudo apt-get install festival
# Usage:	fest "text"
function fest() {
    echo $1 | festival --tts
}



##################################################
# Easily run a program in the background without #
# losing output	 				 #
##################################################

function fork() { tf=$(tempfile -d /tmp -p $1.);echo -n "$tf "; $@ &>$tf& }


##################################################
# Find all bash functions in a file		 #
##################################################

###### finds all functions defined in any shell script secified, including .bashrc
function functions() { read -p "File name> "; sort -d $REPLY | grep "() {" | sed -e 's/() {//g' | less; }



##################################################
# ISO-maker from disc				 #
##################################################

function geniso() {
	# copyright 2007 - 2010 Christopher Bratusek
	if [[ $CD_WRITER ]]; then
		dd $DD_OPTS if=$CD_WRITER of="$1"
	else	dd $DD_OPTS if=/dev/dvdrw of="$1"
	fi
}



##################################################
# Download the latest kernel			 #
##################################################

function get_kernel() {
	# copyright 2007 - 2010 Christopher Bratusek
	if [[ $1 == "-s" ]]; then
		wget http://www.kernel.org/pub/linux/kernel/v2.6/linux-${2}.tar.bz2
	elif [[ $1 == "-t" ]]; then
		wget http://www.kernel.org/pub/linux/kernel/v2.6/testing/linux-${2}.tar.bz2
	elif [[ $1 == "-sg" ]]; then
		git clone git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-${2}.y.git
	elif [[ $1 == "-tg" ]]; then
		git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux-2.6.git
	elif [[ $1 == "-z" ]]; then
		wget http://downloads.zen-kernel.org/${2}/${2}-zen${3}.patch.lzma
	fi
}

##################################################
# Show computer information of all sorts	 #
# (requires 'gawk': sudo apt-get install gawk)	 #
##################################################

###### machine details
function ii()
{
    echo -e "\n${RED}You are logged onto:$NC " ; hostname
    echo -e "\n${RED}Additionnal information:$NC " ; uname -a
    echo -e "\n${RED}Users logged on:$NC " ; w -h
    echo -e "\n${RED}Current date:$NC " ; date
    echo -e "\n${RED}Machine stat:$NC " ; uptime
    echo -e "\n${RED}Disk space:$NC " ; df -h
    echo -e "\n${RED}Memory stats (in MB):$NC " ;
    if [ "$OS" = "Linux" ]; then
        free -m
    elif [ "$OS" = "Darwin" ]; then
        vm_stat
    fi
    echo -e "\n${RED}IPs:$NC " ; ips
}




###### colored status of running services
function services() { printf "$(service --status-all 2>&1|sed -e 's/\[ + \]/\\E\[42m\[ + \]\\E\[0m/g' -e 's/\[ - \]/\\E\[41m\[ - \]\\E\[0m/g' -e 's/\[ ? \]/\\E\[43m\[ ? \]\\E\[0m/g')\n"; }



##################################################
# Morse code encoding and decoding		 #
##################################################

###### this is a short Morse code decoder written as a shellscript using sed
# the Morse coded text should be written with spaces between the letters
# only good to convert from Morse code to text
# by scvalex
function morse2text()
{
echo $1\  | tr . 0 | sed -e {s/0----\ /1/g} -e {s/00---\ /2/g} -e {s/000--\ /3/g} -e {s/000-\ /4/g} -e {s/00000\ /5/g} -e {s/-0000\ /6/g} -e {s/--000\ /7/g} -e {s/---00\ /8/g} -e {s/----0\ /9/g} -e {s/-----\ /0/g} \
	| sed -e {s/-0-0\ /c/g} -e {s/-000\ /b/g} -e {s/00-0\ /f/g} -e {s/0000\ /h/g} -e {s/0---\ /j/g} -e {s/0-00\ /l/g} -e {s/0--0\ /p/g} -e {s/--0-\ /q/g} -e {s/000-\ /v/g} -e {s/-00-\ /x/g} -e {s/-0--\ /y/g} -e {s/--00\ /z/g} \
	| sed -e {s/0--\ /w/g} -e {s/-00\ /d/g} -e {s/--0\ /g/g} -e {s/-0-\ /k/g} -e {s/---\ /o/g} -e {s/0-0\ /r/g} -e {s/000\ /s/g} -e {s/00-\ /u/g} \
	| sed -e {s/0-\ /a/g} -e {s/00\ /i/g} -e {s/--\ /m/g} -e {s/-0\ /n/g} \
	| sed -e {s/0\ /e/g} -e {s/-\ /t/g}
}



function text2morse()
{
cat > "/tmp/text2morse.py" <<"End-of-message"
#!/usr/bin/python
# short mark, dot or 'dit' (.) = .
# longer mark, dash or 'dah' (-) = -
# intra-character gap (between the dots and dashes within a character) = no space
# short gap (between letters) = single space
# medium gap (between words) = double space
import sys
__author__="Aanand Natarajan"
# morse code dictionary
codes = {'1':".----",'2':"..---",'3':"...--",'4':"....-",'5':".....",'6':"-....",'7':"--...",'8':"---..",
'9':"----.",'0':"-----",'A':".-",'B':"-...",'C':"-.-.",'D':"-..",'E':".",'F':"..-.",'G':"--.",
'H':"....",'I':"..",'J':".---",'K':"-.-",'L':".-..",'M':"--",'N':"-.",'O':"---",'P':".--.",
'Q':"--.-",'R':".-.",'S':"...",'T':"-",'U':"..-",'V':"...-",'W':".--",'X':"-..-",'Y':"-.--",
'Z':"--..",
# punctuations
',':"--..--",'.':".-.-.-",'?':"..--..",';':"-.-.-",':':"---...",'/':"-..-.",
'-':"-....-","'":".----.",'(':"-.--.",')':"-.--.-",'!':"-.-.--",'&':".-...",
'=':"-...-",'+':".-.-.",'_':"..--.-",'"':".-..-.",'$':"...-..-",'@':".--.-.",
# space
' ':"|"}
binary = {'.':'.','-':'-',',':' ','|':'  '}
def encode(value):
    """ encodes the value into morse code """
    morse_value=""
    value.replace('*', 'X')
    value.replace('^', 'XX')
    for c in value:
       try :
               morse_value += codes[c.upper()]+','
       except :
         print "Unintended character " + c + " omitted"
    return _get_binary(morse_value)
def decode(morse_code_value):
    """ decodes the morse bytes """
    decoded_value = _decode_binary(morse_code_value)
    ascii_value=""
    for v in decoded_value.split(","):
        ascii_value += _get_key(v)
    return ascii_value
def _get_binary(value):
     binary_value = ""
     for c in value:
         binary_value += binary[c]
     return binary_value
def _get_key(value):
     """ returns the key for the given value """
     for k,v in codes.items():
         if v == value:
            return k
     return ''
def _decode_binary(binary):
    dah_replaced = binary.replace('-', '-')
    dit_replaced = dah_replaced.replace('.', '.')
    comma_replaced = dit_replaced.replace(' ', ',')
    zero_replaced = comma_replaced.replace('', '|,')
    return zero_replaced
def _do_decode(value):
    print "Decoded : "+decode(value)
def _do_encode(value):
    print "Encoded : "+encode(value)
if __name__ == "__main__":
   if len(sys.argv) > 2:
      if sys.argv[1] == 'd' :
         print "decoding"
         _do_decode(sys.argv[2])
      else:
         print "encoding"
         _do_encode(sys.argv[2])
   elif len(sys.argv) > 1:
        print "encoding"
        _do_encode(sys.argv[1])
   else:
        print "Usage : "+sys.argv[0]+" [d (decode) |e (encode)] [input string]"
End-of-message
chmod +x "/tmp/text2morse.py"
"/tmp/text2morse.py" "$1"
rm "/tmp/text2morse.py"
}



##################################################
# Youtube stuff					 #
##################################################

###### stream YouTube videos directly to your media player
function mtube() {
  video_id=$(curl -s $1 | sed -n "/watch_fullscreen/s;.*\(video_id.\+\)&title.*;\1;p");
  mplayer -fs $(echo "http://youtube.com/get_video.php?$video_id");
}



alias mtube_='mplayer -fs $(echo "http://youtube.com/get_video.php?$(curl -s "$1" | sed -n "/watch_fullscreen/s;.*\(video_id.\+\)&title.*;\1;p")")'



###### mps-youtube
# requires "python-pip" and mps-youtube
# sudo apt-get install python-pip
# sudo pip install mps-youtube
# sudo pip install mps-youtube --upgrade
alias youtube='mpsyt'



###### Youtube-dl
# requires "youtube-dl"
# sudo apt-get install youtube-dl
alias yt='youtube-dl -t'



###### YouTube convert and download all user's videos to MP3s on the fly
function yt2mp3() { for j in `seq 1 301`;do i=`curl -s gdata.youtube.com/feeds/api/users/$1/uploads\?start-index=$j\&max-results=1|grep -o "watch[^&]*"`;ffmpeg -i `wget youtube.com/$i -qO-|grep -o 'url_map"[^,]*'|sed -n '1{s_.*|__;s_\\\__g;p}'` -vn -ab 128k "`youtube-dl -e ${i#*=}`.mp3";done;}



function yt2mp3-chanrip() { for count in 1 51 101 151 201 251 301; do for i in $(curl -s http://gdata.youtube.com/feeds/api/users/"$1"/uploads\?start-index="$count"\&max-results=50 | grep -Eo "watch\?v=[^[:space:]\"\'\\]{11}" | uniq); do ffmpeg -i $(wget http://youtube.com/"$i" -qO- | sed -n "/fmt_url_map/{s/[\'\"\|]/\n/g;p}" | sed -n '/^fmt_url_map/,/videoplayback/p' | sed -e :a -e '$q;N;5,$D;ba' | tr -d '\n' | sed -e 's/\(.*\),\(.\)\{1,3\}/\1/') -vn -ab 128k "$(youtube-dl -e http://youtube.com/"$i").mp3"; done; done; unset count i; }



###### convert to ogg
function yt2ogg() {
	# copyright 2007 - 2010 Christopher Bratusek
	ffmpeg -i "$1" -vn "$1".ogg
}



###### play YouTube's first match directly
function ytplay() { args="$*";mplayer -fs $(youtube-dl -g "http://www.youtube.com$(lynx --source "http://www.youtube.com/results?search_query=${args// /+}&aq=f"|grep -m1 '<a id=.*watch?v=.*title'|cut -d\" -f4)"); }



###### download entire YouTube channel - all of a user's videos					 #
function yt-chanrip() { for i in $(curl -s http://gdata.youtube.com/feeds/api/users/"$1"/uploads | grep -Eo "watch\?v=[^[:space:]\"\'\\]{11}" | uniq); do youtube-dl --title --no-overwrites http://youtube.com/"$i"; done }



###### download YouTube music playlist and convert it to mp3 files
function yt-pl2mp3() { umph -m 50 $1 | cclive -f mp4_720p; IFS=$(echo -en "\n\b"); for track in $(ls | grep mp4 | awk '{print $0}' | sed -e 's/\.mp4//'); do (ffmpeg -i $track.mp4 -vn -ar 44100 -ac 2 -ab 320 -f mp3 $track.mp3); done; rm -f *.mp4 ; }




##################################################
# Query Wikipedia via console over DNS		 #
##################################################

function mwiki() { blah=`echo $@ | sed -e 's/ /_/g'`; dig +short txt $blah.wp.dg.cx; }



# function mwiki() { dig +short txt `echo $*|sed 's| *|_|g'`.wp.dg.cx; }



function mwiki_() { local IFS=_; dig +short txt "${*^}".wp.dg.cx; }



##################################################
# User friendly ps				 #
##################################################

function my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,bsdtime,command ; }



function pp() { my_ps f | awk '!/awk/ && $0~var' var=${1:-".*"} ; }



function psaux() {
    [ $# == 1 ] && ps aux | grep $1
}




##################################################
# For newbies with Linux			 #
##################################################

function newbies()
{
read -sn 1 -p "1/10. Welcome to Ubuntu. Relax. Take a breath. Just because it's not Windows doesn't mean it will be difficult to figure out. Especially with me at the wheel. ;)

"
read -sn 1 -p "﻿2/10. Ubuntu is an operating system, just like Windows (ie. XP, Vista, 7). It is a Linux distro, meaning it uses the Linux kernel, which is essentially the brains of the operating system. Ubuntu is highly customizable, and I have tweaked it to look similar to Windows, but it can look, feel, and run any way you'd like. Unlike Windows, Ubuntu is free, as well as nearly all of it's applications. Less than 1% of the world uses Linux; about half of that use Ubuntu (#1 ranked Linux distro)). And due to this, and the fact that it's structure is different than Windows, it is pretty much virus-free. Also, no Windows viruses can ever harm a Linux/Ubuntu computer. So download away.

"
read -sn 1 -p "3/10. Your computer's username is 'Me'. Your computer's password is 'password'. The password can easily be changed.

"
read -sn 1 -p "﻿4/10. To change the password, you must change both the User and the Default Keyring passwords. First, change the user password, by going to Menu (bottom left button) -> System -> Preferences -> About Me and click 'Change Password...'. Second, change the Default Keyring password by going to Menu (bottom left button) -> Accessories -> Passwords and Encryption Keys and find 'Passwords: default', click it with the right mouse button, and select 'Change Password'.

"
read -sn 1 -p "5/10. Ubuntu updates and upgrades are currently set up to install important security updates as well as to pop up a box prompting you to click install when anything else requires an upgrade. Very easy. Just need password. One thing about updates on Ubuntu is it updates everything, both the operating system and the installed applications through the repositories (official and unofficial servers that house a large number of various applications and games).

"
read -sn 1 -p "6/10. Your home folder (similar to a 'My Documents' folder in Windows) is 'me', and can be opened either by going to Menu (bottom left button) -> Places -> Home Folder, OR double-clicking the left mouse button on 'me's Home' on the Desktop. The 'Temp' folder inside is what is set for all downloads and is my ideal for using as the working folder for whatever you want. In the 'Pictures' folder, there is a 'Backgrounds' folder that includes all of your desktop backgrounds and is where you can add or remove backgrounds.

"
read -sn 1 -p "7/10. There are some application subsitutes to mention: [OpenOffice -> Microsoft Office], [(Totem) Movie Player -> Windows Media Player], [Evolution Mail -> Microsoft Outlook or Outlook Express], [Nautilus File Manager -> Windows Explorer].

"
read -sn 1 -p "8/10. If you'd like to add/remove software, Ubuntu has a very easy way to do so. Just go to the Ubuntu Software Center, by going to Menu (bottom left button) -> Ubuntu Software Center. It lists all the software found in the repositories.

"
read -sn 1 -p "9/10. If you wish to open this extremely helpful text again, it's as easy as: single-clicking the right mouse button anywhere on the Desktop (or in Nautilus File Manager) -> Scripts -> My_Scripts -> For-Newbies -> For-Newbies.sh.

"
read -sn 1 -p "10/10. To get rid of this damn script at startup because you are sick of seeing it every time you log into your computer, go to Menu (bottom left button) -> Other -> Startup Applications and uncheck 'For Newbies'.

"
}


##################################################
# ThePirateBay.org torrent search		 #
##################################################

function piratebay()
{
lynx -dump http://thepiratebay.org/search/$@|awk '/TPB.torrent$/ {print $2}'
}





##################################################
# Display text of ODF document in terminal	 #
##################################################

######   $1 = ODF file
function o3() { unzip -p "$1" content.xml | o3totxt | utf8tolatin1; }



##################################################
# Download all installed deb packages from 	 #
# official repos currently on system		 #
##################################################

function packagelistdl()
{
sudo dpkg --get-selections | awk '{ print $1};' | while read package; do apt-cache show "$package"| wget -c 'http://ae.archive.ubuntu.com/ubuntu/'`sed -ne '/^Filename/s/^Filename: //p'`; done
}



##################################################

function qrurl() { curl -sS "http://chart.apis.google.com/chart?chs=200x200&cht=qr&chld=H|0&chl=$1" -o - | display -filter point -resize 600x600 png:-; }



##################################################
# Email yourself a short note			 #
##################################################

function quickemail() { echo "$*" | mail -s "$*" email@email.com; }

##################################################
# Copy Relinux backups to '~/Backups' folder 	 #
# (only after Relinux has backed-up stuff)	 #
##################################################

function relinux-copy()
# requires: relinux (not yet available in PPA/repo)
{
    notify-send -t 3000 -i /usr/share/icons/gnome/32x32/status/info.png "Relinux ISO Copy Started"
    DISTRIB_ID=`cat /etc/lsb-release | grep DISTRIB_ID | cut -d '=' -f 2`
    DISTRIB_CODENAME=`lsb_release -cs | sed "s/^./\u&/"`
    if [ ! -d "$HOME/Backups" ]; then
	mkdir "$HOME/Backups"
    fi
    if [ ! -d "$HOME/Backups/$DISTRIB_ID $DISTRIB_CODENAME Backup `date +-%e-%m-%Y`" ]; then
	mkdir "$HOME/Backups/$DISTRIB_ID $DISTRIB_CODENAME Backup `date +-%e-%m-%Y`"
	cd "$HOME/Backups/$DISTRIB_ID $DISTRIB_CODENAME Backup `date +-%e-%m-%Y`"
	echo 'Password:		password' >> Password.txt
	cp /home/relinux/custom.iso "$HOME/Backups/$DISTRIB_ID $DISTRIB_CODENAME Backup `date +-%e-%m-%Y`"
	cd ..
	cd ..
	notify-send -t 3000 -i /usr/share/icons/gnome/32x32/status/info.png "Relinux ISO Copy Finished"
    else
	mkdir "$HOME/Backups/$DISTRIB_ID $DISTRIB_CODENAME Backup `date +-%e-%m-%Y_%H%M`"
	cd "$HOME/Backups/$DISTRIB_ID $DISTRIB_CODENAME Backup `date +-%e-%m-%Y_%H%M`"
	echo 'Password:		password' >> Password.txt
	cp /home/relinux/custom.iso "$HOME/Backups/$DISTRIB_ID $DISTRIB_CODENAME Backup `date +-%e-%m-%Y_%H%M`"
	cd ..
	cd ..
	notify-send -t 3000 -i /usr/share/icons/gnome/32x32/status/info.png "Relinux ISO Copy Finished"
    fi ;
}



##################################################
# Copy Remastersys backups to '~/Backups' folder #
# (only after Remastersys has backed-up stuff)	 #
##################################################

function remastersys-copy()
# requires: sudo apt-get install remastersys
{
    notify-send -t 3000 -i /usr/share/icons/gnome/32x32/status/info.png "Remastersys ISO Copy Started"
    DISTRIB_ID=`cat /etc/lsb-release | grep DISTRIB_ID | cut -d '=' -f 2`
    DISTRIB_CODENAME=`lsb_release -cs | sed "s/^./\u&/"`
    if [ ! -d "$HOME/Backups" ]; then
	mkdir "$HOME/Backups"
    fi
    if [ ! -d "$HOME/Backups/$DISTRIB_ID $DISTRIB_CODENAME Backup `date +-%e-%m-%Y`" ]; then
	mkdir "$HOME/Backups/$DISTRIB_ID $DISTRIB_CODENAME Backup `date +-%e-%m-%Y`"
	cd "$HOME/Backups/$DISTRIB_ID $DISTRIB_CODENAME Backup `date +-%e-%m-%Y`"
	echo 'Password:		password' >> Password.txt
	cp /home/remastersys/remastersys/custom-backup.iso "$HOME/Backups/$DISTRIB_ID $DISTRIB_CODENAME Backup `date +-%e-%m-%Y`"
	cd ..
	cd ..
	notify-send -t 3000 -i /usr/share/icons/gnome/32x32/status/info.png "Remastersys ISO Copy Finished"
    else
	mkdir "$HOME/Backups/$DISTRIB_ID $DISTRIB_CODENAME Backup `date +-%e-%m-%Y_%H%M`"
	cd "$HOME/Backups/$DISTRIB_ID $DISTRIB_CODENAME Backup `date +-%e-%m-%Y_%H%M`"
	echo 'Password:		password' >> Password.txt
	cp /home/remastersys/remastersys/custom-backup.iso "$HOME/Backups/$DISTRIB_ID $DISTRIB_CODENAME Backup `date +-%e-%m-%Y_%H%M`"
	cd ..
	cd ..
	notify-send -t 3000 -i /usr/share/icons/gnome/32x32/status/info.png "Remastersys ISO Copy Finished"
    fi ;
}





##################################################
# Repeats a command every x seconds		 #
##################################################

###### Usage: repeat PERIOD COMMAND
function repeat() {
    local period
    period=$1; shift;
    while (true); do
        eval "$@";
    sleep $period;
    done
}





##################################################
# Make a backup before editing a file		 #
##################################################

function safeedit() {
cp $1 ${1}.backup && vim $1
}




##################################################
# Create a new script, automatically populating  #
# the shebang line, editing the script, and 	 #
# making it executable.				 #
##################################################

function shebang() { if i=$(which $1); then printf '#!%s\n\n' $i >  $2 && vim + $2 && chmod 755 $2; else echo "'which' could not find $1, is it in your \$PATH?"; fi; }

##################################################
# Function that outputs dots every second until  #
# command completes				 #
##################################################

function sleeper() { while `ps -p $1 &>/dev/null`; do echo -n "${2:-.}"; sleep ${3:-1}; done; }; export -f sleeper



##################################################
# Slow down CPU and IO for process and its 	 #
# offsprings					 #
##################################################

###### requires gawk: sudo apt-get install gawk
function slow2() { ionice -c3 renice -n 20 $(pstree `pidof $1` -p -a -u -A|gawk 'BEGIN{FS=","}{print $2}'|cut -f1 -d " ") ; }




##################################################
# Get function's source				 #
##################################################

function source_print() { set | sed -n "/^$1/,/^}$/p"; }



##################################################
# Creates a dated tarball			 #
##################################################

function tarball()
{
    name=$1
    shift
    tar zcvf $name-`date +%Y%m%d`.tar.gz "$@"
}





##################################################
# Keeping your $HOME directory organized	 #
##################################################

## having one temp dir for dls etc can quickly become mess, so try this tip to organise by date
 export TD="$HOME/temp/`date +'%Y-%m-%d'`"
 function td() {
    td=$TD
    if [ ! -z "$1" ]; then
        td="$HOME/temp/`date -d "$1 days" +'%Y-%m-%d'`";
    fi
    mkdir -p $td; cd $td
    unset td
 }



##################################################
# Make the following commands run in		 #
# background automatically:			 #
##################################################

###### wrapper around xemacs/gnuserv ...
function te()
{
    if [ "$(gnuclient -batch -eval t 2>&-)" == "t" ]; then
        gnuclient -q "$@";
    else
        ( xemacs "$@" &);
    fi
}



##################################################
# Set terminal title				 #
##################################################

function terminal_title {
    echo -en "\033]2;$@\007"
}



##################################################
# Set/Unset a proxy for the terminal using tor	 #
##################################################

###### For a HTTP proxy in a single terminal window, simply run the following command in a terminal:
# export http_proxy='http://YOUR_USERNAME:YOUR_PASSWORD@PROXY_IP:PROXY_PORT/'
# For a secure connection (HTTPS), use:
# export https_proxy='http://YOUR_USERNAME:YOUR_PASSWORD@PROXY_IP:PROXY_PORT/'
# Obviously, replace everything with your username, password, proxy ip and port.
# If the proxy does not require an username and password, skip that part
function termproxy()
{
export http_proxy='http://localhost:8118'
export https_proxy='http://localhost:8118'
}



###### To close the HTTP proxy in the terminal, either close the terminal, or enter this:
function termproxyX()
{
unset http_proxy
unset https_proxy
}



##################################################
# Terrorist threat level text			 #
##################################################

function terrorist-level()
{
echo "Terrorist threat level: $(curl -s 'http://www.dhs.gov/dhspublic/getAdvisoryCondition' | awk -F\" 'NR==2{ print $2 }')"
}




##################################################
# A function to find the fastest free DNS server #
##################################################

###### requires: sudo apt-get install moreutils
function timeDNS() { { for x in "${local_DNS}" "208.67.222.222" "208.67.220.220" "198.153.192.1" "198.153.194.1" "156.154.70.1" "156.154.71.1" "8.8.8.8" "8.8.4.4"; do ({ echo -n "$x "; dig @"$x" "$*"|grep Query ; }|sponge &) done ; } | sort -n -k5 ; }



###### Elapsed time.  Usage:
#   t=$(timer)
#   ... # do something
#   printf 'Elapsed time: %s\n' $(timer $t)
#      ===> Elapsed time: 0:01:12
# If called with no arguments a new timer is returned.
# If called with arguments the first is used as a timer
# value and the elapsed time is returned in the form HH:MM:SS.
function timer()
{
    if [[ $# -eq 0 ]]; then
        echo $(date '+%s')
    else
        local  stime=$1
        etime=$(date '+%s')
        if [[ -z "$stime" ]]; then stime=$etime; fi
        dt=$((etime - stime))
        ds=$((dt % 60))
        dm=$(((dt / 60) % 60))
        dh=$((dt / 3600))
        printf '%d:%02d:%02d' $dh $dm $ds
    fi
}



##################################################
# Top-ten commands				 #
##################################################

function top10() {
	# copyright 2007 - 2010 Christopher Bratusek
	history | awk '{a[$2]++ } END{for(i in a){print a[i] " " i}}' | sort -rn | head
}


# Convert text file to pdf			 #
##################################################

# Requires:	sudo apt-get install txt2html python-pisa
function txt2pdf() { xhtml2pdf -b "${1%.*}" < <(txt2html "$1"); }



##################################################
# Decompiler for jar files using jad		 #
##################################################

function unjar() { mkdir -p /tmp/unjar/$1 ; unzip -d /tmp/unjar/$1 $1 *class 1>/dev/null && find /tmp/unjar/$1 -name *class -type f | xargs jad -ff -nl -nonlb -o -p -pi99 -space -stat ; rm -r /tmp/unjar/$1 ; }


##################################################
# Up to top directory				 #
##################################################

function up() {
# copyright 2007 - 2010 Christopher Bratusek
[ "${1/[^0-9]/}" == "$1" ] && {
        local ups=""
        for ((i=1; i<=$1; i++))
        do
                ups=$ups"../"
        done
        cd $ups
        }
}



##################################################
# Move all files in current directory 		 #
# (recursively) up a level			 #
##################################################

function upalevel()
{
find . -type f | perl -pe '(s!(\./.*/)(.*)!mv "\1\2" "\1../\2"!);' | sh
}



##################################################
# Short URLs with ur1.ca			 #
##################################################

function ur1() { curl -s --url http://ur1.ca/ -d longurl="$1" | sed -n -e '/Your ur1/!d;s/.*<a href="\(.*\)">.*$/\1/;p' ; }


# Checks to ensure that all 			 #
# environment variables are valid		 #
##################################################

###### looks at SHELL, HOME, PATH, EDITOR, MAIL, and PAGER
function validator()
{
errors=0
function in_path()
{
  # given a command and the PATH, try to find the command. Returns
  # 1 if found, 0 if not.  Note that this temporarily modifies the
  # the IFS input field seperator, but restores it upon completion.
  cmd=$1    path=$2    retval=0
  oldIFS=$IFS; IFS=":"
  for directory in $path
  do
    if [ -x $directory/$cmd ] ; then
      retval=1      # if we're here, we found $cmd in $directory
    fi
  done
  IFS=$oldIFS
  return $retval
}
function validate()
{
  varname=$1    varvalue=$2
  if [ ! -z $varvalue ] ; then
    if [ "${varvalue%${varvalue#?}}" = "/" ] ; then
      if [ ! -x $varvalue ] ; then
        echo "** $varname set to $varvalue, but I cannot find executable."
        errors=$(( $errors + 1 ))
      fi
    else
      if in_path $varvalue $PATH ; then
        echo "** $varname set to $varvalue, but I cannot find it in PATH."
        errors=$(( $errors + 1 ))
      fi
    fi
  fi
}
####### Beginning of actual shell script #######
if [ ! -x ${SHELL:?"Cannot proceed without SHELL being defined."} ] ; then
  echo "** SHELL set to $SHELL, but I cannot find that executable."
  errors=$(( $errors + 1 ))
fi
if [ ! -d ${HOME:?"You need to have your HOME set to your home directory"} ]
then
  echo "** HOME set to $HOME, but it's not a directory."
  errors=$(( $errors + 1 ))
fi
# Our first interesting test: are all the paths in PATH valid?
oldIFS=$IFS; IFS=":"     # IFS is the field separator. We'll change to ':'
for directory in $PATH
do
  if [ ! -d $directory ] ; then
      echo "** PATH contains invalid directory $directory"
      errors=$(( $errors + 1 ))
  fi
done
IFS=$oldIFS             # restore value for rest of script
# Following can be undefined, & also be a progname, rather than fully qualified path.
# Add additional variables as necessary for your site and user community.
validate "EDITOR" $EDITOR
validate "MAILER" $MAILER
validate "PAGER"  $PAGER
# and, finally, a different ending depending on whether errors > 0
if [ $errors -gt 0 ] ; then
  echo "Errors encountered. Please notify sysadmin for help."
else
  echo "Your environment checks out fine."
fi
}


##################################################
# Text message on wallpaper			 #
##################################################

function wallpaperWarn() { BG="/desktop/gnome/background/picture_filename"; convert "`gconftool-2 -g $BG`" -pointsize 70 -draw "gravity center fill red  text 0,-360 'Warn' fill white  text 0,360 'Warn'" /tmp/w.jpg; gconftool-2 --set $BG -t string "/tmp/w.jpg" ; }




##################################################
# Download all files of a certain type with wget #
##################################################

###### usage: wgetall mp3 http://example.com/download/
function wgetall() { wget -r -l2 -nd -Nc -A.$@ $@ ; }





##################################################
# Check hosts that are online			 #
##################################################

###### for those who DO NOT USE their /etc/hosts file for name resolution
# Function whoisonline adapted by:	dewar1
# This can look through resolv.conf file for address of nameservers
# (note: THIS WILL ONLY WORK IF YOU USE LOCAL NAMESERVERS! Nameservers
# from your ISP will render this function useless). It then cuts result to
# show just first 3 octets of IP address and runs nmap just as original function.
if which nmap 2>&1 > /dev/null; then
  function whodat()
  {
    if [ -n "$1" ]; then
      net="$1"
    else
      net=$(cat /etc/resolv.conf | grep 'nameserver' | cut -c12-26 | awk -F '.' '{print $1"."$2"."$3".0/24"}')
    fi
    echo "testing $net for online hosts"
    nmap -sP $net | awk '/Host/ && /up/ { print $0; }'
    echo "done"
}
fi



###### for those who USE their /etc/hosts file for name resolution
#if which nmap 2>&1 > /dev/null; then
#  function whoisonline()
#  {
#    if [ -n "$1" ]; then
#      net="$1"
#    else
#      net=$(grep `hostname` /etc/hosts | awk -F '.' '{ print $1"."$2"."$3".0/24"}')
#    fi
#    sh_info "testing $net for online boxes"
#    sudo nmap -sP $net | awk '/Host/ && /up/ { print $0; }'
#    sh_success "done"
#  }
#fi



##################################################
# Wipe command (uses 'shred', not 'wipe',	 #
# which I think is better (sudo apt-get		 #
# install wipe))				 #
##################################################

function wipe_() {
	# copyright 2007 - 2010 Christopher Bratusek
	cryptsetup -d /dev/urandom -c aes-xts-plain create delete $1
	shred -vzn 0 /dev/mapper/delete
	sync && sleep 4
	cryptsetup remove delete
}


##################################################
# Wordcount					 #
##################################################

###### counts frequency of words in a file
function wordfreq()
{
cat "$1"|tr -d '[:punct:]'|tr '[:upper:]' '[:lower:]'|tr -s ' ' '\n'|sort|uniq -c|sort -rn
}


######################################################################################################################################################
###### ALIASES ###### ALIASES ###### ALIASES ###### ALIASES ###### ALIASES ###### ALIASES ###### ALIASES ###### ALIASES ###### ALIASES ###### ALIASES ######
######################################################################################################################################################








##################################################
# App-specific					 #
##################################################

alias audio='ncmpcpp'									# music player
alias daemon-status='for a in deluged deluge rtorrent; do  (ps -u $USER|grep $a$ > /dev/null && echo $a running.) || echo $a not running.; done'											# list the status of the daemons :p
alias daggerfall='dosbox -conf ~/.dosbox.conf.daggerfall'				# launch dosbox with preset config for Daggerfall
# alias deluge-link='echo http://'`hostname`':'$USER_WPRT'/'
alias ftp='ncftp Personal'
alias gnome-fallback-session='gsettings set org.gnome.desktop.session session-name "gnome-fallback"'	# GNOME3 desktop session
alias gnome-fallback-set='sudo /usr/lib/lightdm/lightdm-set-defaults -s gnome-fallback'			# auto login under set GNOME3 desktop
alias reiniciar-gnome3='gnome-shell --replace'						# to reset Gnome Shell
alias gnome-shell-session='gsettings set org.gnome.desktop.session session-name "gnome-shell"'		# GNOME3 desktop session
alias gnome-shell-set='sudo /usr/lib/lightdm/lightdm-set-defaults -s gnome-shell'			# auto login under set GNOME3 desktop
alias instaluj='sudo pacman-color -S'
alias links2g='links2 -g'
alias nano='nano -W -m'									# disable annoying line wrapping
alias notify-osd-reset='pkill notify-osd'						# to reset notify-osd (handy for Leolik's customized notify-osd)
alias rc='ssh ${MEDIAPCHOSTNAME} env DISPLAY=:0.0 rhythmbox-client --no-start'		# remote control for Rhythmbox on an Ubuntu Media PC
alias refresh='nautilus -q && gconftool-2 --shutdown && pkill gnome-panel'		# safely close/refresh nautilus and gnome-panel
alias scrot='scrot -c -d 7'
alias ss='gnome-screensaver-command -a'
alias start-deluged='start-stop-daemon -S --pidfile $HOME/.deluged.pid -u $USER -d $HOME -a /usr/bin/deluged -- --pidfile $HOME/.deluged.pid'
alias start-deluge-webui='start-stop-daemon -S --pidfile $HOME/.deluge-web.pid --background --make-pidfile -u $USER -d $HOME -a /usr/bin/deluge --  -u web'
alias start-rtorrent='(screen -ls|grep rtorrent > /dev/null || (screen -dmS rtorrent rtorrent && false)) && echo rtorrent is already running.'
alias start-vnc='vncserver :$USER_VPRT'
alias stop-deluged='start-stop-daemon -K --pidfile $HOME/.deluged.pid -u $USER -d $HOME -a /usr/bin/deluged -- --pidfile $HOME/.deluged.pid || killall -v -u $USER deluged'
alias stop-deluge-webui='start-stop-daemon -K --pidfile $HOME/.deluge-web.pid --make-pidfile -u $USER -d $HOME -a /usr/bin/deluge --  -u web;rm $HOME/.deluge-web.pid;'
alias stop-rtorrent='killall -u $USER rtorrent -q || echo rtorrent is not running'
alias stop-vnc='vncserver -kill :$USER_VPRT'
alias tetris='bastet' 									# bastardly tetris... awesome but deadly



##################################################
# Apt-cache stuff				 #
##################################################

alias aptadd='sudo apt-cache add'
alias aptdepends='apt-cache depends'
alias aptdotty='sudo apt-cache dotty'
alias aptdumpavail='sudo apt-cache dumpavail'
alias aptdump='apt-cache dump'
alias aptgencaches='sudo apt-cache gencaches'
alias aptpkgnames='apt-cache pkgnames'
alias aptpolicy='apt-cache policy'
alias aptrdepends='apt-cache rdepends'
alias aptsearch='apt-cache search'
alias aptshowpkg='apt-cache showpkg'
alias aptshowsrc='apt-cache showsrc'
alias aptshow='apt-cache show'
alias aptstats='apt-cache stats'
alias aptunmet='apt-cache unmet'
alias aptxvcg='sudo apt-cache xvcg'



##################################################
# Apt-get stuff					 #
##################################################

alias autoremove='sudo apt-get autoremove'
alias check='sudo apt-get check'
alias dist-upgrade='sudo apt-get dist-upgrade'
alias dselect-upgrade='sudo apt-get dselect-upgrade'
alias source='sudo apt-get source'



##################################################
# Apt-history Stuff				 #
##################################################

alias historya='apt-history'
alias historyi='apt-history install'
alias historyre='apt-history remove'
alias historyro='apt-history rollback'
alias historyu='apt-history upgrade'



##################################################
# Aptitude stuff				 #
##################################################

alias autoclean='sudo aptitude autoclean'
alias build-dep='sudo aptitude build-dep'
alias changelog='aptitude changelog'
alias clean='sudo aptitude clean'
alias download='aptitude download'
alias forbid-version='sudo aptitude forbid-version'
alias forget-new='sudo aptitude forget-new'
alias full-upgrade='sudo aptitude full-upgrade'
alias hold='sudo aptitude hold'
alias install='sudo aptitude install'
alias linux-image='aptitude search linux-image'			# linux-image kernel update check
alias markauto='sudo aptitude markauto'
alias purge='sudo aptitude purge'
alias reinstall='sudo aptitude reinstall'
alias remove='sudo aptitude remove'
alias search='aptitude search'
alias show='aptitude show'
alias unhold='sudo aptitude unhold'
alias unmarkauto='sudo aptitude unmarkauto'
alias update='sudo aptitude update'
alias upgrade='sudo aptitude safe-upgrade'
alias why-not='aptitude why-not'
alias why='aptitude why'



##################################################
# Chown substitution				 #
##################################################

alias chown-backgrounds='sudo chown -R $USER:$USER ~/Pictures/Backgrounds'
alias chown-backups='sudo chown -R $USER:$USER ~/Backups'
alias chown-books='sudo chown -R $USER:$USER ~/eBooks'
alias chown-desktop='sudo chown -R $USER:$USER ~/Desktop'
alias chown-documents='sudo chown -R $USER:$USER ~/Documents'
alias chown-downloads='sudo chown -R $USER:$USER ~/Downloads'
alias chown-drive-c='sudo chown -R $USER:$USER ~/.wine/drive_c'
alias chown-home='sudo chown -R $USER:$USER ~/'
alias chown-images='sudo chown -R $USER:$USER ~/Images'
alias chown-localhost='sudo chown -R $USER:$USER ~/var/www'
alias chown-music='sudo chown -R $USER:$USER ~/Music'
alias chown-nautilus-scripts='sudo chown -R $USER:$USER ~/.gnome2/nautilus-scripts'
alias chown-nemo-scripts='sudo chown -R $USER:$USER ~/.gnome2/nemo-scripts'
alias chown-packages='sudo chown -R $USER:$USER ~/Packages'
alias chown-pictures='sudo chown -R $USER:$USER ~/Pictures'
alias chown-ppc='sudo chown -R $USER:$USER ~/PPC'
alias chown-public='sudo chown -R $USER:$USER ~/Public'
alias chown='sudo chown -R $USER:$USER'
alias chown-temp='sudo chown -R $USER:$USER ~/Temp'
alias chown-torrents='sudo chown -R $USER:$USER ~/Torrents'
alias chown-ubuntu-texts='sudo chown -R $USER:$USER ~/Documents/"Ubuntu Texts"'
alias chown-videos='sudo chown -R $USER:$USER ~/Videos'



##################################################
# Command substitution				 #
##################################################

alias abs='sudo abs'
alias a='ssh-agent;ssh-add'
alias br='sudo service bluetooth restart'						# restart Bluetooth from terminal
alias bt='aria2c --max-upload-limit=10K --seed-time=60 --listen-port=8900-8909'		# shortcut for downloading a torrent file on the command line
alias c='clear'
alias ci='vim'
alias ck='killall conky && conky -d'
alias cls='clear'
alias cn_='cat > /dev/null'								# for pasting code/data into terminal without it doing anything
alias contents='/bin/tar -tzf'								# can View the contents of a Tar file
alias cp='cp -iv'
alias d_='ssh 192.168.1.4'
alias dr='dirs -v'
alias ds_='dig +noauthority +noadditional +noqr +nostats +noidentify +nocmd +noquestion +nocomments'		# short and sweet output from dig(1)
alias e='espeak'
alias egrep='egrep –color=auto'
alias enote='vi ~/todo;~/motd.pl'
alias fgrep='fgrep –color=auto'
alias ge='geany'
alias go='startx'
alias grep='grep --color=auto'								# highlight matched pattern
alias g_='mocp -G'
alias halt='sudo /sbin/halt'
alias h='history | grep $1'
alias hib='sudo pm-hibernate'
alias ie='wine iexplore.exe'								# browse the Internet using Internet Explorer
alias im='centerim'  									# terminal based instant messaging client
alias img='imgurbash' 									# uploads image to imgur
alias irc='irssi' 									# terminal based IRC
# alias irssi='screen -wipe; screen -A -U -x -R -S irssi irssi'				# for creating screen session containing IRSSI, named irssi, while checking if existing session is created
alias j='jobs -l'
alias kfx='killall firefox-bin'
alias kgp='killall gnome-panel'
alias k='kill'
alias kk='sendmail -d0.4 -bv root |less'
alias kn='killall nautilus'
alias last='last -a'
alias lock='clear && vlock -c'								# clear and lock console (non-X) terminal
alias logs='tail -f /var/log/messages /var/log/*log'
alias m='~/bin/motd.pl'
alias mc='metacafe-dl -t'
alias me_='vi ~/.muttrc'
alias mkdir='mkdir -p -v'
alias mktd='tdir=`mktemp -d` && cd $tdir'						# make a temp dir, then immediately cd into it
alias m=mutt
alias more='less'
alias mp='screen -d -m mousepad'
alias mv='mv -iv'
alias na='nano'
alias n='nautilus & exit'
alias np='mpc --format "np: [[%artist%] - [%title%] - 					#[[%album%] ##[%track%]#]]|[%file%]" | head -n 1'
alias nq='nautilus -q'
alias oe='wine msimn.exe'								# read email with Outlook Express
alias packup='/bin/tar -czvf'								# compress a file in tar format
alias parts='cat /proc/partitions'
# alias paste='ix'  									# pastes to ix.ox pastebin service
alias paste_='pastebinit'
alias path='echo -e ${PATH//:/\\n}'
alias pe='vi ~/.procmailrc'
alias pg='ps aux | grep'*								# requires an argument
alias pi='`cat ~/.pi | grep ' ; alias addpi='echo "cd `pwd`" >> ~/.pi'			# fast access to any of your favorite directory.
alias ping='ping -c 10'
alias pjet='enscript -h -G -fCourier9 -d $LPDEST'           				# pretty-print using enscript
alias print='/usr/bin/lp -o nobanner -d $LPDEST'            				# assumes LPDEST is defined (default printer)
alias ps='ps auxf'
alias p_='for ((n=0;n<1;n++)); do dd if=/dev/urandom count=1 2> /dev/null | uuencode -m -| sed -ne 2p | cut -c-8; done' # creating password
alias :q='exit'
alias q='exit'
alias rcci='svn ci ~/rc/'
alias rcup='~/bin/rc_sync.sh'
alias rd='cd "`pwd -P`"' 								# if in directory containing symlink in path, change to "real" path
alias real_location='readlink -f' 							# get real location of file
alias reboot='sudo /sbin/reboot'
# alias reboot='sudo shutdown -r now'   						# easy shutdown management
alias rgrep='find . \( ! -name .svn -o -prune \) -type f -print0 | xargs -0 grep'	# rgrep: recursive grep without .svn
alias rh='rehash'
alias rmdir='rmdir -v'
alias rm_='rm -iv'
alias root='sudo bash -l'								# generic shortcut for switching to root user depending on system
# alias root='sudo -i'									# generic shortcut for switching to root user depending on system
# alias root='su -'									# generic shortcut for switching to root user depending on system
alias scx='screen -x'
alias sdi='sudo dpkg -i'
alias se='vi ~/.screenrc'
alias sg='sudo geany'
alias shutdown='sudo shutdown -h now'							# proper restart
alias shutdownde='for ((;;)) do pgrep wget ||shutdown -h now; sleep 5; done'		# if download end, shutdown
alias sn='sudo nano'
alias split='split -d'
alias sr='screen -d -RR'
# alias s='sudo'
# alias s_='screen -X screen'; s top; s vi; s man ls;					# start a new command in a new screen window
alias sshdo='ssh -q -t root@localhost -- cd $PWD \&\& sudo'				# an alternative to sudo
alias sus='sudo pm-suspend'
alias svi='sudo vim'
alias tc='tar cfvz'
alias te='tail -50f /var/log/qmail/qmail-send/current | elog'
alias tf='tail -50f /var/log/iptables.log'
alias tm='tail -50f /var/log/messages.log'
alias ts='tail -50f /var/log/auth.log'
alias tweet_='bti'
alias tx='tar xfvz'
alias u='mocp -P && sudo pm-suspend ; sleep 1s && mocp -U && setxkbmap -option terminate:ctrl_alt_bksp && xmodmap .config/caps-esc && ~/.fehbg'	# something is messed up somewhere, dirty fix
alias unpack='/bin/tar -xzvpf'								# uncompress a a Tar file
alias updatefont='fc-cache -v -f'
alias url='tinyurl'
alias urlping="ping -q -c 1 www.google.com|awk -F/ 'END{print $5}'"			# do one ping to URL: good in MRTG gauge graph to monitor connectivity
alias v='zless -N'									# -N means display line numbers (turn off line numbers with -n)
alias ve='vi ~/.vimrc'
alias vi='vim'
alias web='w3m'   									# terminal based web browser
alias which='type -all'
alias win='/media/win'
alias wtf='watch -n 1 w -hs'
alias xee='cat /var/log/Xorg.0.log |grep EE'
alias xevs="xev | grep 'keycode\|button'"						# only show button events for xev
alias xp='xprop | grep "WM_WINDOW_ROLE\|WM_CLASS" && echo "WM_CLASS(STRING) = \"NAME\", \"CLASS\""'
alias x='startx'
alias xww='cat /var/log/Xorg.0.log |grep WW'
alias z='zenity --info --text="You will not believe it, but your command has finished now! :-)" --display :0.0'	# get a desktop notification from the terminal
alias zen='fortune /usr/share/fortune/zen'



##################################################
# Command substitution (for typos)		 #
##################################################

alias findgrep='grepfind'
alias mann='man'
alias moer='more'
alias moew='more'
alias updtae='update'
alias vf='cd'
alias xs='cd'
alias yauort='yaourt'
alias yoaurt='yaourt'
alias youart='yaourt'
alias yuaort='yaourt'
alias yuoart='yaourt'



##################################################
# Computer cleanup				 #
##################################################

alias adobecleanup='sudo rm -fr ~/.adobe && sudo rm -fr ~/.macromedia && sudo rm -fr /root/.adobe && sudo rm -fr /root/.macromedia'
alias bleachbitcleanup='sudo bleachbit --clean --preset'
alias cachecleanup='sudo rm -fr /root/.cache/* && sudo rm -fr ~/.cache/*'				# cleanup cache
alias cleanup="sudo apt-get -y autoclean && sudo apt-get -y autoremove && sudo apt-get -y clean && sudo apt-get -y remove && sudo aptitude -y purge `dpkg --get-selections | grep deinstall | awk '{print $1}'` && sudo deborphan | xargs sudo apt-get -y remove --purge && sudo bleachbit --clean --preset && find ~ -type f -name ".DS_Store" -exec rm {} \; && find ~ -type f -name "Thumbs.db" -exec rm {} \; && find ~ -type f -regex ".*~" -exec rm {} \; && sudo rm -rvf ~/.adobe ~/.adobe/Acrobat/*/Cache/ ~/.adobe/Acrobat/*/Preferences/reader_prefs ~/.adobe/Flash_Player/AssetCache/ ~/.amsn/*/*/cache/ ~/.amsn/*/logs/ ~/.amsn/*/voiceclips/ ~/.amsn/*/webcam/ ~/.aMule/logfile ~/.aMule/logfile.bak ~/.aMule/Temp/ ~/.azureus/active/*.bak ~/.azureus/ipfilter.cache ~/.azureus/*.log ~/.azureus/logs/ ~/.azureus/tmp/ ~/.bash_history ~/.beagle/Indexes/ ~/.beagle/Log/ ~/.beagle/TextCache/ ~/.cache/ ~/.cache/* ~/.cache/audacious/thumbs/ ~/.cache/chromium/ ~/.cache/gedit/gedit-metadata.xml ~/.cache/google-chrome/ ~/.cache/vlc/ ~/.compiz/session/ ~/.config/audacious/log ~/.config/audacious/playlist.xspf ~/.config/chromium/Default/Bookmarks.bak ~/.config/chromium/Default/Cookies ~/.config/chromium/Default/Current\ Session ~/.config/chromium/Default/Current\ Tabs ~/.config/chromium/Default/databases/Databases.db ~/.config/chromium/Default/databases/http*/ ~/.config/chromium/Default/Extension\ Cookies ~/.config/chromium/Default/Favicons/ ~/.config/chromium/Default/*History* ~/.config/chromium/Default/*History*/ ~/.config/chromium/Default/*-journal ~/.config/chromium/Default/Last\ Session ~/.config/chromium/Default/Last\ Tabs ~/.config/chromium/Default/Local\ Storage/*localstorage ~/.config/chromium/Default/Thumbnails* ~/.config/chromium/Default/Top\ Sites ~/.config/chromium/Default/Visited\ Links ~/.config/chromium/Default/Web\ Data/chrome.autofill ~/.config/chromium/Default/Web\ Data/chrome.keywords ~/.config/chromium/Local\ State/HostReferralList.json ~/.config/chromium/Local\ State/StartupDNSPrefetchList.json ~/.config/compiz/ ~/.config/emesene*/*/cache/ ~/.config/emesene*/*/log* ~/.config/emesene*/*/logs/ ~/.config/google-chrome/Default/Cookies ~/.config/google-chrome/Default/Current\ Session ~/.config/google-chrome/Default/Current\ Tabs ~/.config/google-chrome/Default/databases/Databases.db ~/.config/google-chrome/Default/databases/http*/ ~/.config/google-chrome/Default/Extension\ Cookies ~/.config/google-chrome/Default/Favicons/ ~/.config/google-chrome/Default/*History* ~/.config/google-chrome/Default/History/ ~/.config/google-chrome/Default/Last\ Session ~/.config/google-chrome/Default/Last\ Tabs ~/.config/google-chrome/Default/Local\ Storage/http*localstorage ~/.config/google-chrome/Default/Preferences/dns_prefetching.json ~/.config/google-chrome/Default/Thumbnails* ~/.config/google-chrome/Default/Top\ Sites ~/.config/google-chrome/Default/Visited\ Links ~/.config/google-chrome/Default/Web\ Data/chrome.autofill ~/.config/google-chrome/Default/Web\ Data/chrome.keywords ~/.config/google-chrome/Local\ State/HostReferralList.json ~/.config/google-chrome/Local\ State/StartupDNSPrefetchList.json ~/.config/gpodder/cache/ ~/.config/menus/*.menu.undo-* ~/.config/real/rpcookies.txt ~/.config/Screenlets/*.log ~/.config/transmission/blocklists/ ~/.config/transmission/resume/ ~/.easytag/easytag.log ~/.elinks/cookies ~/.elinks/*hist /etc/apt/sources.list.d/* ~/.evolution/cache/ ~/.exaile/cache/ ~/.exaile/covers/ ~/.exaile/exaile.log ~/.exaile/podcasts/ ~/.filezilla/recentservers.xml ~/.gconf/apps/gnome-settings/gnome-panel/%gconf.xml ~/.gconf/apps/gnome-settings/gnome-search-tool/%gconf.xml ~/.gftp/cache/ ~/.gftp/gftp.log ~/.gimp-*/tmp/ ~/.gl-117/logfile.txt ~/.gnome2/epiphany/ephy-favicon-cache.xml ~/.gnome2/epiphany/ephy-history.xml ~/.gnome2/epiphany/favicon_cache/ ~/.gnome2/epiphany/mozilla/epiphany/Cache/ ~/.gnome2/epiphany/mozilla/epiphany/cookies* ~/.gnome2/gedit-metadata.xml ~/.gnome2/rhythmbox/jamendo/ ~/.gnome2/rhythmbox/magnatune/ ~/.googleearth/Cache/dbCache.* ~/.googleearth/Temp/ ~/.goutputstream-* ~/.hippo_opensim_viewer/cache/ ~/.hippo_opensim_viewer/logs/ ~/.icedteaplugin/cache/ ~/.java/deployment/cache/ ~/.kde/cache-*/ ~/.kde*/share/apps/gwenview/recent*/*rc ~/.kde/share/apps/kcookiejar/cookies ~/.kde/share/apps/konqueror/autosave/ ~/.kde/share/apps/konqueror/closeditems_saved ~/.kde/share/apps/konqueror/konq_history ~/.kde*/share/apps/RecentDocuments/*.desktop ~/.kde/share/config/konq_history ~/.kde/tmp-*/ ~/.kde/tmp-localhost.localdomain/ ~/.libreoffice/*/*/*/cache/ ~/.libreoffice/*/*/registry/data/org/openoffice/Office/Common.xcu ~/.liferea_*/cache/ ~/.liferea_*/mozilla/liferea/Cache/ ~/.liferea_*/mozilla/liferea/cookies.sqlite ~/.links2/links.his ~/.local/share/gvfs-metadata/*.log ~/.local/share/gvfs-metadata/uuid* ~/.local/share/Trash/ ~/.local/share/Trash/* ~/.luckyBackup/logs/ ~/.luckyBackup/snaps/ ~/.macromedia ~/.macromedia/Flash_Player/ ~/.mc/filepos ~/.mc/history ~/.miro/icon-cache/ ~/.miro/miro-*log* ~/.miro/mozilla/Cache/ ~/.mozilla/default/Cache/ ~/.mozilla/extensions ~/.mozilla/firefox/Crash\ Reports/ ~/.mozilla/firefox/*.default/adblockplus/patterns-backup* ~/.mozilla/firefox/*.default/bookmarkbackups/ ~/.mozilla/firefox/*.default/Cache/ ~/.mozilla/firefox/*.default/cookies.* ~/.mozilla/firefox/*.default/downloads.sqlite ~/.mozilla/firefox/*.default/formhistory.sqlite ~/.mozilla/firefox/*.default/history.dat ~/.mozilla/firefox/*.default/minidumps/ ~/.mozilla/firefox/*.default/mozilla-media-cache/ ~/.mozilla/firefox/*.default/OfflineCache/ ~/.mozilla/firefox/*.default/reminderfox/*.bak* ~/.mozilla/firefox/*.default/sessionstore.* ~/.mozilla/firefox/*.default/startupCache/ ~/.mozilla/firefox/*.default/webappsstore.sqlite ~/.mozilla/seamonkey/*/Cache/ ~/.mozilla/seamonkey/*.default/cookies.sqlite ~/.mozilla/seamonkey/*.default/downloads.sqlite ~/.mozilla/seamonkey/*.default/urlbarhistory.sqlite ~/.mozilla/*/*.slt/chatzilla/logs/*log ~/.mozilla/*/*.slt/cookies.txt ~/.mozilla/*/*.slt/history.dat ~/.mozilla-thunderbird/*.default/signons.txt ~/.nautilus/metafiles/*/*.xml ~/.nautilus/saved-session-?????? ~/.nexuiz/data/dlcache/ ~/.ntrc_*/cookies.txt ~/.ntrc_*/history* ~/.openoffice.org/*/*/*/cache/ ~/.openoffice.org/*/*/registry/data/org/openoffice/Office/Common.xcu ~/.opera/*cache*/ ~/.opera/cookies4.dat ~/.opera/download.dat ~/.opera/global.dat ~/.opera/*history* ~/.opera/icons/ ~/.opera/pstorage/ ~/.opera/sessions/ ~/.opera/temporary_downloads/ ~/.opera/thumbnails/ ~/.opera/vlink4.dat ~/.opera/vps/????/md.dat ~/.purple/icons/ ~/.purple/logs/ ~/.recently-used.xbel ~/.recoll/xapiandb/ /root/.adobe /root/.cache/* /root/.local/share/Trash/* /root/.macromedia /root/.thumbnails/* /root/.Trash ~/.secondlife/cache/ ~/.secondlife/logs/ ~/.Skype/*/chatmsg[0-9]*.dbb ~/.Skype/*/chatsync/*/*.dat ~/.sw35/swiftweasel/*/Cache/ ~/.synaptic/log/ ~/.thumbnails/ ~/.thumbnails/* ~/.thunderbird/*.default/Cache/ ~/.thunderbird/*.default/cookies.sqlite ~/.thunderbird/*.default/signons.sqlite ~/.thunderbird/*.default/signons.txt ~/.thunderbird/default/*.slt/Cache/ ~/.thunderbird/default/*.slt/cookies.sqlite ~/.thunderbird/default/*.slt/signons3.txt ~/.thunderbird/default/*.slt/signons.sqlite ~/.thunderbird/default/*.slt/signons.txt ~/.thunderbird/Profiles/*.default/Cache/ ~/.thunderbird/Profiles/*.default/cookies.sqlite ~/.thunderbird/Profiles/*.default/signons.sqlite ~/.Trash ~/.tremulous/servercache.dat /var/backups/ /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/tmp/ ~/.viminfo ~/.wine/drive_c/winetrickstmp/ ~/.winetrickscache/ ~/.xbmc/addons/Navi-X/cache/images/* ~/.xbmc/addons/packages/* ~/xbmc*.log ~/.xbmc/userdata/Database/Textures* ~/.xbmc/userdata/Thumbnails/* ~/.xchat2/logs/*log ~/.xchat2/scrollback/ ~/.xchat2/xchatlogs/*log ~/.xine/catalog.cache ~/.xsession-errors ~/.xsession-errors.old"
alias configpurge="sudo aptitude -y purge `dpkg --get-selections | grep deinstall | awk '{print $1}'`"	# purge configuration files of removed packages on debian systems
alias kernelcleanup="dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge"											# remove all unused Linux Kernel headers, images & modules
alias orphaned='sudo deborphan | xargs sudo apt-get -y remove --purge'
alias thumbnailcleanup='sudo rm -fr /root/.thumbnails/* && sudo rm -fr ~/.thumbnails/*'
alias tp='trash-put'											# sends files to trash instead of perm deleting w/rm
alias trash='sudo rm -fr ~/.local/share/Trash/* && sudo rm -fr /root/.local/share/Trash/* && sudo rm -fr /root/.Trash && sudo rm -fr ~/.Trash'



##################################################
# DD substitution				 #
##################################################

 alias backup-sda='sudo dd if=/dev/sda of=/dev/hda bs=64k conv=notrunc,noerror'	# to backup the existing drive to ???
# alias backup-sdb='sudo dd if=/dev/sdb of=/dev/hda bs=64k conv=notrunc,noerror'	# to backup the existing drive to ???
# alias backup-sdc='sudo dd if=/dev/sdc of=/dev/hda bs=64k conv=notrunc,noerror'	# to backup the existing drive to ???
# alias backup-sdd='sudo dd if=/dev/sdd of=/dev/hda bs=64k conv=notrunc,noerror'	# to backup the existing drive to ???
# alias backup-sde='sudo dd if=/dev/sde of=/dev/hda bs=64k conv=notrunc,noerror'	# to backup the existing drive to ???
# alias backup-sdf='sudo dd if=/dev/sdf of=/dev/hda bs=64k conv=notrunc,noerror'	# to backup the existing drive to ???
# alias backup-sdg='sudo dd if=/dev/sdg of=/dev/hda bs=64k conv=notrunc,noerror'	# to backup the existing drive to ???
# alias cdcopy='dd if=/dev/cdrom of=cd.iso'						# to backup a cd from a cdrom drive to an ISO
# alias dd-sda-full='sudo dd if=/dev/urandom of=/dev/sda bs=8b conv=notrunc,noerror'	# to wipe hard drive with random data option (1)
# alias dd-sda-r='sudo dd if=/dev/urandom of=/dev/sda bs=102400'			# to wipe hard drive with random data option (2)
# alias dd-sda='sudo dd if=/dev/zero of=/dev/sda conv=notrunc'				# to wipe hard drive with zero
# alias dd-sdb-full='sudo dd if=/dev/urandom of=/dev/sdb bs=8b conv=notrunc,noerror'	# to wipe hard drive with random data option (1)
# alias dd-sdb-r='sudo dd if=/dev/urandom of=/dev/sdb bs=102400'			# to wipe hard drive with random data option (2)
# alias dd-sdb='sudo dd if=/dev/zero of=/dev/sdb conv=notrunc'				# to wipe hard drive with zero
# alias dd-sdc-full='sudo dd if=/dev/urandom of=/dev/sdc bs=8b conv=notrunc,noerror'	# to wipe hard drive with random data option (1)
# alias dd-sdc-r='sudo dd if=/dev/urandom of=/dev/sdc bs=102400'			# to wipe hard drive with random data option (2)
# alias dd-sdc='sudo dd if=/dev/zero of=/dev/sdc conv=notrunc'				# to wipe hard drive with zero
# alias dd-sdd-full='sudo dd if=/dev/urandom of=/dev/sdd bs=8b conv=notrunc,noerror'	# to wipe hard drive with random data option (1)
# alias dd-sdd-r='sudo dd if=/dev/urandom of=/dev/sdd bs=102400'			# to wipe hard drive with random data option (2)
# alias dd-sdd='sudo dd if=/dev/zero of=/dev/sdd conv=notrunc'				# to wipe hard drive with zero
# alias dd-sde-full='sudo dd if=/dev/urandom of=/dev/sde bs=8b conv=notrunc,noerror'	# to wipe hard drive with random data option (1)
# alias dd-sde-r='sudo dd if=/dev/urandom of=/dev/sde bs=102400'			# to wipe hard drive with random data option (2)
# alias dd-sde='sudo dd if=/dev/zero of=/dev/sde conv=notrunc'				# to wipe hard drive with zero
# alias dd-sdf-full='sudo dd if=/dev/urandom of=/dev/sdf bs=8b conv=notrunc,noerror'	# to wipe hard drive with random data option (1)
# alias dd-sdf-r='sudo dd if=/dev/urandom of=/dev/sdf bs=102400'			# to wipe hard drive with random data option (2)
# alias dd-sdf='sudo dd if=/dev/zero of=/dev/sdf conv=notrunc'				# to wipe hard drive with zero
# alias dd-sdg-full='sudo dd if=/dev/urandom of=/dev/sdg bs=8b conv=notrunc,noerror'	# to wipe hard drive with random data option (1)
# alias dd-sdg-r='sudo dd if=/dev/urandom of=/dev/sdg bs=102400'			# to wipe hard drive with random data option (2)
# alias dd-sdg='sudo dd if=/dev/zero of=/dev/sdg conv=notrunc'				# to wipe hard drive with zero
# alias diskcopy='dd if=/dev/dvd of=disk.iso'						# to backup the disc (cd/dvd/whatever) to an ISO
# alias floppycopy='dd if=/dev/fd0 of=floppy.image'					# to duplicate a floppy disk to hard drive image file
# alias partitioncopy='sudo dd if=/dev/sda1 of=/dev/sda2 bs=4096 conv=notrunc,noerror'	# to duplicate one hard disk partition to another
# alias restore-sda='sudo dd if=/dev/hda of=/dev/sda bs=64k conv=notrunc,noerror'	# to restore from ??? to the existing drive
# alias restore-sdb='sudo dd if=/dev/hda of=/dev/sdb bs=64k conv=notrunc,noerror'	# to restore from ??? to the existing drive
# alias restore-sdc='sudo dd if=/dev/hda of=/dev/sdc bs=64k conv=notrunc,noerror'	# to restore from ??? to the existing drive
# alias restore-sdd='sudo dd if=/dev/hda of=/dev/sdd bs=64k conv=notrunc,noerror'	# to restore from ??? to the existing drive
# alias restore-sde='sudo dd if=/dev/hda of=/dev/sde bs=64k conv=notrunc,noerror'	# to restore from ??? to the existing drive
# alias restore-sdf='sudo dd if=/dev/hda of=/dev/sdf bs=64k conv=notrunc,noerror'	# to restore from ??? to the existing drive
# alias restore-sdg='sudo dd if=/dev/hda of=/dev/sdg bs=64k conv=notrunc,noerror'	# to restore from ??? to the existing drive
# alias scsicopy='sudo dd if=/dev/scd0 of=cd.iso'					# if cdrom is scsi}



###### DD substitution using PV to show progress
# requires: sudo apt-get install pv
alias backup-sda='sudo pv /dev/sda | dd of=/dev/hda bs=64k conv=notrunc,noerror'	# to backup the existing drive to ???
alias backup-sdb='sudo pv /dev/sdb | dd of=/dev/hda bs=64k conv=notrunc,noerror'	# to backup the existing drive to ???
alias backup-sdc='sudo pv /dev/sdc | dd of=/dev/hda bs=64k conv=notrunc,noerror'	# to backup the existing drive to ???
alias backup-sdd='sudo pv /dev/sdd | dd of=/dev/hda bs=64k conv=notrunc,noerror'	# to backup the existing drive to ???
alias backup-sde='sudo pv /dev/sde | dd of=/dev/hda bs=64k conv=notrunc,noerror'	# to backup the existing drive to ???
alias backup-sdf='sudo pv /dev/sdf | dd of=/dev/hda bs=64k conv=notrunc,noerror'	# to backup the existing drive to ???
alias backup-sdg='sudo pv /dev/sdg | dd of=/dev/hda bs=64k conv=notrunc,noerror'	# to backup the existing drive to ???
alias cdcopy='pv /dev/cdrom | dd of=cd.iso'						# to backup a cd from a cdrom drive to an ISO
alias dd-sda-full='sudo pv /dev/urandom | dd of=/dev/sda bs=8b conv=notrunc,noerror'	# to wipe hard drive with random data option (1)
alias dd-sda-r='sudo pv /dev/urandom | dd of=/dev/sda bs=102400'			# to wipe hard drive with random data option (2)
alias dd-sda='sudo pv /dev/zero | dd of=/dev/sda conv=notrunc'				# to wipe hard drive with zero
alias dd-sdb-full='sudo pv /dev/urandom | dd of=/dev/sdb bs=8b conv=notrunc,noerror'	# to wipe hard drive with random data option (1)
alias dd-sdb-r='sudo pv /dev/urandom | dd of=/dev/sdb bs=102400'			# to wipe hard drive with random data option (2)
alias dd-sdb='sudo pv /dev/zero | dd of=/dev/sdb conv=notrunc'				# to wipe hard drive with zero
alias dd-sdc-full='sudo pv /dev/urandom | dd of=/dev/sdc bs=8b conv=notrunc,noerror'	# to wipe hard drive with random data option (1)
alias dd-sdc-r='sudo pv /dev/urandom | dd of=/dev/sdc bs=102400'			# to wipe hard drive with random data option (2)
alias dd-sdc='sudo pv /dev/zero | dd of=/dev/sdc conv=notrunc'				# to wipe hard drive with zero
alias dd-sdd-full='sudo pv /dev/urandom | dd of=/dev/sdd bs=8b conv=notrunc,noerror'	# to wipe hard drive with random data option (1)
alias dd-sdd-r='sudo pv /dev/urandom | dd of=/dev/sdd bs=102400'			# to wipe hard drive with random data option (2)
alias dd-sdd='sudo pv /dev/zero | dd of=/dev/sdd conv=notrunc'				# to wipe hard drive with zero
alias dd-sde-full='sudo pv /dev/urandom | dd of=/dev/sde bs=8b conv=notrunc,noerror'	# to wipe hard drive with random data option (1)
alias dd-sde-r='sudo pv /dev/urandom | dd of=/dev/sde bs=102400'			# to wipe hard drive with random data option (2)
alias dd-sde='sudo pv /dev/zero | dd of=/dev/sde conv=notrunc'				# to wipe hard drive with zero
alias dd-sdf-full='sudo pv /dev/urandom | dd of=/dev/sdf bs=8b conv=notrunc,noerror'	# to wipe hard drive with random data option (1)
alias dd-sdf-r='sudo pv /dev/urandom | dd of=/dev/sdf bs=102400'			# to wipe hard drive with random data option (2)
alias dd-sdf='sudo pv /dev/zero | dd of=/dev/sdf conv=notrunc'				# to wipe hard drive with zero
alias dd-sdg-full='sudo pv /dev/urandom | dd of=/dev/sdg bs=8b conv=notrunc,noerror'	# to wipe hard drive with random data option (1)
alias dd-sdg-r='sudo pv /dev/urandom | dd of=/dev/sdg bs=102400'			# to wipe hard drive with random data option (2)
alias dd-sdg='sudo pv /dev/zero | dd of=/dev/sdg conv=notrunc'				# to wipe hard drive with zero
alias diskcopy='pv /dev/dvd | dd of=disk.iso'						# to backup the disc (cd/dvd/whatever) to an ISO
alias floppycopy='pv /dev/fd0 | dd of=floppy.image'					# to duplicate a floppy disk to hard drive image file
alias partitioncopy='sudo pv /dev/sda1 | dd of=/dev/sda2 bs=4096 conv=notrunc,noerror'	# to duplicate one hard disk partition to another
alias restore-sda='sudo pv /dev/hda | dd of=/dev/sda bs=64k conv=notrunc,noerror'	# to restore from ??? to the existing drive
alias restore-sdb='sudo pv /dev/hda | dd of=/dev/sdb bs=64k conv=notrunc,noerror'	# to restore from ??? to the existing drive
alias restore-sdc='sudo pv /dev/hda | dd of=/dev/sdc bs=64k conv=notrunc,noerror'	# to restore from ??? to the existing drive
alias restore-sdd='sudo pv /dev/hda | dd of=/dev/sdd bs=64k conv=notrunc,noerror'	# to restore from ??? to the existing drive
alias restore-sde='sudo pv /dev/hda | dd of=/dev/sde bs=64k conv=notrunc,noerror'	# to restore from ??? to the existing drive
alias restore-sdf='sudo pv /dev/hda | dd of=/dev/sdf bs=64k conv=notrunc,noerror'	# to restore from ??? to the existing drive
alias restore-sdg='sudo pv /dev/hda | dd of=/dev/sdg bs=64k conv=notrunc,noerror'	# to restore from ??? to the existing drive
alias scsicopy='sudo pv /dev/scd0 | dd of=cd.iso'					# if cdrom is scsi}



##################################################
# Defragmenting and Fragmentation-Checking	 #
# Tools						 #
##################################################

alias defrag-home='defrag ~'			# uses 'defrag' function
alias defrag-root='defrag /root'		# uses 'defrag' function
alias defrag-system='defrag /'			# uses 'defrag' function
alias defrag2-home='defrag2 ~'			# uses 'defrag2' function
alias defrag2-root='defrag2 /root'		# uses 'defrag2' function
alias defrag2-system='defrag2 /'		# uses 'defrag2' function
alias fragcheck-home='fragcheck ~'		# uses 'fragcheck' function
alias fragcheck-root='fragcheck /root'		# uses 'fragcheck' function
alias fragcheck-system='fragcheck /'		# uses 'fragcheck' function
alias fragcheck2-home='fragcheck2 ~'		# uses 'fragcheck2' function
alias fragcheck2-root='fragcheck2 /root'	# uses 'fragcheck2' function
alias fragcheck2-system='fragcheck2 /'		# uses 'fragcheck2' function



##################################################
# Directory shortcuts				 #
##################################################

alias back='cd $OLDPWD'
alias backgrounds='cd ~/Pictures/Backgrounds'
alias backups='cd ~/Backups'
alias books='cd ~/eBooks'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias drive-c='cd ~/.wine/drive_c'
alias dropbox='cd ~/Dropbox'
alias home='cd ~/'
alias images='cd ~/Images'
alias localhost='cd /var/www'
alias movies='cd ~/Videos'
alias music='cd ~/Music'
alias nautilus-scripts='cd ~/.gnome2/nautilus-scripts'
alias nemo-scripts='cd ~/.gnome2/nemo-scripts'
alias packages='cd ~/Packages'
alias packets='cd ~/.packets'
alias pictures='cd ~/Pictures'
alias ppc='cd ~/PPC'
alias public='cd ~/Public'
alias temp='cd ~/Temp'
alias test='cd ~/.test'
alias torrents='cd ~/Torrents'
alias ubuntu-texts='cd ~/Documents/"Ubuntu Texts"'
alias videos='cd ~/Videos'
alias webdesign='cd ~/Web/Design'
alias whereami='display_info'



##################################################
# Espeak commands				 #
##################################################

alias espeak-file='espeak -s 150 -f'
alias espeak-us='espeak -v en-us -s 150'
alias espeak-wav='espeak -s 150 -w voice.wav'
alias espeak-wav-file='espeak -s 150 -w voice.wav -f'



##################################################
# Extundelete stuff from ext3/ext4 filesystems	 #
##################################################

alias extundelete-d='sudo extundelete "$1" --restore-directory "$2"'		# restore all files possible from specified dir.  ("$2" = path/to/directory)
alias extundelete-f='sudo extundelete "$1" --restore-files "$2"'		# restore list of files (use to restore single file) ("$2" = filename)
alias extundelete-r='sudo extundelete "$1" --restore-all'			# restore all files possible to undelete
alias extundelete-sda='sudo extundelete /dev/sda --restore-all'			# restore all files possible to undelete
alias extundelete-sda-d='sudo extundelete /dev/sda --restore-directory "$1"'	# restore all files possible from specified dir.  ("$1" = path/to/directory)
alias extundelete-sda-f='sudo extundelete /dev/sda --restore-files "$1"'	# restore list of files (use to restore single file) ("$1" = filename)
alias extundelete-sdb='sudo extundelete /dev/sdb --restore-all'			# restore all files possible to undelete
alias extundelete-sdb-d='sudo extundelete /dev/sdb --restore-directory "$1"'	# restore all files possible from specified dir.  ("$1" = path/to/directory)
alias extundelete-sdb-f='sudo extundelete /dev/sdb --restore-files "$1"'	# restore list of files (use to restore single file) ("$1" = filename)
alias extundelete-sdc='sudo extundelete /dev/sdc --restore-all'			# restore all files possible to undelete
alias extundelete-sdc-d='sudo extundelete /dev/sdc --restore-directory "$1"'	# restore all files possible from specified dir.  ("$1" = path/to/directory)
alias extundelete-sdc-f='sudo extundelete /dev/sdc --restore-files "$1"'	# restore list of files (use to restore single file) ("$1" = filename)
alias extundelete-sdd='sudo extundelete /dev/sdd --restore-all'			# restore all files possible to undelete
alias extundelete-sdd-d='sudo extundelete /dev/sdd --restore-directory "$1"'	# restore all files possible from specified dir.  ("$1" = path/to/directory)
alias extundelete-sdd-f='sudo extundelete /dev/sdd --restore-files "$1"'	# restore list of files (use to restore single file) ("$1" = filename)
alias extundelete-sde='sudo extundelete /dev/sde --restore-all'			# restore all files possible to undelete
alias extundelete-sde-d='sudo extundelete /dev/sde --restore-directory "$1"'	# restore all files possible from specified dir.  ("$1" = path/to/directory)
alias extundelete-sde-f='sudo extundelete /dev/sde --restore-files "$1"'	# restore list of files (use to restore single file) ("$1" = filename)
alias extundelete-sdf='sudo extundelete /dev/sdf --restore-all'			# restore all files possible to undelete
alias extundelete-sdf-d='sudo extundelete /dev/sdf --restore-directory "$1"'	# restore all files possible from specified dir.  ("$1" = path/to/directory)
alias extundelete-sdf-f='sudo extundelete /dev/sdf --restore-files "$1"'	# restore list of files (use to restore single file) ("$1" = filename)
alias extundelete-sdg='sudo extundelete /dev/sdg --restore-all'			# restore all files possible to undelete
alias extundelete-sdg-d='sudo extundelete /dev/sdg --restore-directory "$1"'	# restore all files possible from specified dir.  ("$1" = path/to/directory)
alias extundelete-sdg-f='sudo extundelete /dev/sdg --restore-files "$1"'	# restore list of files (use to restore single file) ("$1" = filename)



##################################################
# Git stuff					 #
##################################################

alias gitouch='find . \( -type d -empty \) -and \( -not -regex ./\.git.* \) -exec touch {}/.gitignore \;'
alias gitup='git pull'
alias gitci='git commit -a -m'
alias gitco='git clone'
alias gita='git add'
alias gitb='git branch'
alias gitc='git checkout'



##################################################
# Hardware Shortcuts				 #
##################################################

alias 0='amixer set PCM 0'
alias -- -='amixer set PCM 2-'
alias +='amixer set PCM 2+'
alias blankcd='cdrecord -v dev=/dev/cdrom blank=fast gracetime=3'
alias blankdvd='cdrecord -v dev=/dev/dvd blank=fast gracetime=3'
alias blueoff='sudo /etc/rc.d/bluetooth stop'
alias blueon='sudo /etc/rc.d/bluetooth start'
alias blueres='sudo /etc/rc.d/bluetooth restart'
alias brand='growisofs -Z /dev/cdrw -v -l -R -J -joliet-long'
alias burnaudiocd='mkdir ./temp && for i in *.[Mm][Pp]3;do mpg123 -w "./temp/${i%%.*}.wav" "$i";done;cdrecord -pad ./temp/* && rm -r ./temp'	# burn a directory of mp3s to an audio cd
alias cdc='eject -t /dev/cdrecorder'
alias cdo='eject /dev/cdrecorder'
alias cruzer='mount /media/cruzer'
alias dvdc='eject -t /dev/dvd'
alias dvdo='eject /dev/dvd'
alias ipod='mount /media/ipod && cd /media/ipod'
alias keject='sudo eject Kindle'						# ejects Kindle devices but keeps it charging (simple 'eject' doesn't work)
alias kingston='mount /media/kingston && cd /media/kingston'
alias laptop_display='sudo cat /proc/acpi/video/VGA/LCD/brightness'		# set laptop display brightness	(path may vary depending on laptop model
alias laptop_displays='echo <percentage> > /proc/acpi/video/VGA/LCD/brightness'	# to discover the possible values for your display
alias mountcd='sudo mount -t is09660 /dev/sr0 /media/cdrom'
alias mountedinfo='df -hT'
alias mountiso='sudo mount ${1} ${2} -t iso9660 -o ro,loop=/dev/loop0'
alias mountwin='mount -t ntfs /dev/sda1 /media/win'
alias mp3='mount /media/mp3 && cd /media/mp3'
alias playm='for i in *.mp3; do play $i; done'
alias playo='for i in *.ogg; do play $i; done'
alias playw='for i in *.wav; do play $i; done'
alias scan='scanimage -L'
alias sd='mount /media/sd'
alias ucruzer='umount /media/cruzer'
alias uipod='umount /media/ipod'
alias ukingston='umount /media/kingston'
alias umountiso='sudo umount /media/iso'
alias ump3='umount /media/mp3'
alias usd='umount /media/sd'
alias uverbatim='umount /media/verbatim'
alias verbatim='mount /media/verbatim && cd /media/verbatim'



##################################################
# Information					 #
##################################################

alias acpi='acpi -V'									# shows all of acpi's info (battery, adapter, thermal, cooling)
alias battery='acpi -bi'								# find large files in current directory
alias big='function BIG() { find . -size +${1}M -ls; }; BIG $1'				# find large files in current directory
alias biggest='BLOCKSIZE=1048576; du -x | sort -nr | head -10'				# show biggest directories
alias biggest_user="ac -p | sort -nk 2 | awk '/total/{print x};{x=$1}"			# show which user has the most accumulated login time
alias boothistory='for wtmp in `dir -t /var/log/wtmp*`; do last reboot -f $wtmp; done | less'
alias charcount='wc -c $1'								# count number of characters in text file
alias codename='lsb_release -cs | sed "s/^./\u&/"'					# Linux version detail - just codename (Natty, Oneiric, etc)
alias color1='sh ~/.scripts/termcolor1'   						# displays colorset 1
alias color2='sh ~/.scripts/termcolor2'   						# displays colerset 2
alias color3='sh ~/.scripts/termcolor3'   						# displays colorset 3
alias cooling='acpi -c'									# shows cooling for processors
alias counts='sort | uniq -c | sort -nr'						# a nice command for summarising repeated information
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'			# to find CPU hogs
alias cpus='grep -c ^processor /proc/cpuinfo'						# number of CPU's in a system
alias cpus_='grep "processor" /proc/cpuinfo | wc -l'					# number of CPU's in a system
alias cpu='sudo dmidecode | grep Core'							# CPU info in a system
alias cputemp='while sleep 1; do acpi -t | osd_cat -p bottom; done &'			# to get the CPU temperature continuously on the desktop
alias ctemp='sensors -f && sensors'							# to get the computer temperature in Fahrenheit and Celcius
alias df='df -h -x tmpfs -x usbfs'							# displays global disk usage by partition, excluding supermounted devices
alias directorydiskusage='du -s -k -c * | sort -rn'
alias dir='ls --color=auto --format=vertical'
alias diskwho='sudo iotop'
alias distro='lsb_release -is'								# Linux distro version (Ubuntu, Linux Mint, Debian, Fedora, etc)
alias distro_='cat /etc/lsb-release | grep DISTRIB_ID | cut -d '=' -f 2'		# Linux distro version (Ubuntu, Linux Mint, Debian, Fedora, etc)
alias distro_ver='lsb_release -rs'							# Linux version detail - just codename version (11.04, 11.10, etc)
alias distro_vers='lsb_release -ds'							# Linux distro and version details (Ubuntu 11.04)
alias dmidecode='sudo dmidecode --type 17 | more'					# check RAM sed and type in Linux
alias ducks='ls -A | grep -v -e '\''^\.\.$'\'' |xargs -i du -ks {} |sort -rn |head -16 | awk '\''{print $2}'\'' | xargs -i du -hs {}'	# useful alias to browse your filesystem for heavy usage quickly						# to show processes reading/writing to disk
alias du='du -h --max-depth=1'								# displays disk usage by directory, in human readable format
alias dush='du -sm *|sort -n|tail'							# easily find megabyte eating files or directories
alias env2='for _a in {A..Z} {a..z};do _z=\${!${_a}*};for _i in `eval echo "${_z}"`;do echo -e "$_i: ${!_i}";done;done|cat -Tsv'	# print all environment variables, including hidden ones
alias ffind='sudo find / -name $1'
alias free='free -m'									# RAM and SWAP detail in MBs
alias freqwatch='watch --interval 1 "cat /proc/acpi/thermal_zone/THRM/*; cat /proc/cpuinfo | grep MHz; cat /proc/acpi/processor/*/throttling"'  # monitor cpu freq and temperature
alias hardware='sudo lshw -html > hardware.html'					# overview of the hardware in the computer
# alias hgrep='history | grep --color=always'						# search commands history
alias hiddenpnps='unhide (proc|sys|brute)'						# forensic tool to find hidden processes and ports
alias hogc='ps -e -o %cpu,pid,ppid,user,cmd | sort -nr | head'				# display the processes that are using the most CPU time and memory
alias hogm='ps -e -o %mem,pid,ppid,user,cmd | sort -nr | head'				# display the processes that are using the most CPU time and memory
alias la_='ls -Al'									# show hidden files
alias l?='cat ~/technical/tips/ls'
alias lc='ls -ltcr'       								# sort by and show change time, most recent last
alias ldir='ls -lhA |grep ^d'
alias ld='ls -ltr' 									# sort by date
alias lfiles='ls -lhA |grep ^-'
alias lf="ls -Alh --color | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\" %0o \",k);print}'"	# full ls with octal+symbolic permissions
alias lgg='ls --color=always | grep --color=always -i'					# quick case-insenstive partial filename search
alias lh='ls -Al' 									# show hidden files
alias lh='ls -lAtrh' 									# sort by date and human readable
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias li='ls -ai1|sort' 								# sort by index number
alias linecount='wc -l $1'								# count number of lines in text file
alias lk='ls -lSr'									# sort by size
alias llllll='ls -FlaXo --color=auto'							# sort the extensions alphabetically; good for winfiles
alias lllll='ls -Fla --full-time -o -Q --color=auto'					# whatever
alias llll='ls -laS --color=auto'							# sort by size
alias lll='ls -Falot --color=auto'							# sort by mod time
alias ll_='ls -l'									# long listing
alias l.='ls -d .[[:alnum:]]* 2> /dev/null || echo "No hidden file here..."'		# list only hidden files
alias l='ls -hF --color'								# quick listing
alias lm_='ls -al |more'    								# pipe through 'more'
alias ln='ln -s'
alias lr='ls -lR'									# recursice ls
alias lrt='ls -lart'									# list files with last modified at the end
alias lsam='ls -am' 									# List files horizontally
alias lsdd='ls -latr'                                 					# sort by date
alias lsd='ls -l | grep "^d"'								# list only directories
alias lsize='ls --sort=size -lhr'							# list by size
alias lsl='ls -lah'                                   					# long list, human-readable
alias ls='ls -hF --color'								# add colors for filetype recognition
alias lsnew='ls -Alh --color=auto --time-style=+%D | grep `date +%D`'
alias lss='ls -shaxSr'                         			       			# sort by size
alias lsss='ls -lrt | grep $1'								# to see something coming into ls output: lss
alias lsx='ls -ax' 									# sort right to left rather then in columns
alias lt_='ls -alt|head -20' 								# 20, all, long listing, modification time
alias lt='ls -ltr'         								# sort by date, most recent last
alias lu='ls -ltur'        								# sort by and show access time, most recent last
alias lx='ls -lXB'									# sort by extension
# alias man='TERMINFO=~/.terminfo TERM=mostlike LESS=C PAGER=less man'			# cool colors for manpages
alias mem_hogs_ps='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'		# to find memory hogs
alias mem_hogs_top='top -l 1 -o rsize -n 10'						# to find memory hogs
# alias mem='~/.scripts/realmem'							# estimates memory usage
alias mypc="hal-get-property --udi /org/freedesktop/Hal/devices/computer --key 'system.hardware.product'"		# show computer model
alias myps='/bin/ps -u "$USER" -o user,pid,ppid,pcpu,pmem,args|less'			# ps
alias numFiles='echo $(ls -1 | wc -l)'							# numFiles: number of (non-hidden) files in current directory
alias ontime='date -d @$(echo $(($(date +%s)-$(cat /proc/uptime|cut -d. -f1))))'	# knowing when a machine is turned on
alias packagelist_="sudo aptitude search -F %p ~i --disable-columns | sed 's/$/,/' | tr '\n\r' ' ' | sed 's/, $//'"	# list all packages (1-liner)
alias packagelist="sudo aptitude search -F %p ~i --disable-columns"			# show list of all packages (columns)
# alias packagelist='sudo dpkg --get-selections'					# show llist of all packages (columns)
alias phonesearch='grep '[0-9]\{3\}-[0-9]\{4\}' "$1"'					# search phone #'s in file (requires XXX-XXX-XXXX format)
alias processbycpuusage="ps -e -o pcpu,cpu,nice,state,cputime,args --sort pcpu | sed '/^ 0.0 /d'"
alias processbymemusage='ps -e -o rss=,args= | sort -b -k1,1n | pr -TW$COLUMNS'
alias processtree='ps -e -o pid,args --forest'
alias pss='ps -ef | grep $1'								# to check a process is running in a box with a heavy load: pss
alias rcommand='ls /usr/bin | shuf -n 1'						# get a random command
# alias rcommand='man $(ls /usr/bin | shuf -n 1)'					# get a random command
alias sete='set|sed -n "/^`declare -F|sed -n "s/^declare -f \(.*\)/\1 ()/p;q"`/q;p"'	# display environment vars only, using set
alias showallaliases='compgen -A alias'							# list bash alias defined in .bash_profile or .bashrc
alias showallfunctions='compgen -A function'						# list bash functions defined in .bash_profile or .bashrc
alias sizeof='du -sh'
alias space='df -h'									# disk space usage
alias sshall='logwatch --service sshd --range all --detail high --print --archives'
alias sshtoday='logwatch --service sshd --range today --detail high --print --archives'
alias superfind='sudo find / ! \( -path /proc -prune -o -path /tmp -prune -o -path /dev -prune -o -path /mnt -prune \) -name'
alias temperature='acpi -tf && acpi -t'							# shows computer temperature, in Fahrenheit and Celsius
alias top20='du -xk | sort -n | tail -20'						# find the 20 biggest directories on the current filesystem
alias top-commands='history | awk "{print $2}" | awk "BEGIN {FS="|"} {print $1}" |sort|uniq -c | sort -rn | head -10'	# show most popular commands
alias topforever='top -l 0 -s 10 -o cpu -n 15'						# continual 'top' listing (every 10 sec) showing top 15 CPU things
alias topten='du -sk $(/bin/ls -A) | sort -rn | head -10'				# displays the top ten biggest folders/files in the current directory
alias top_='xtitle Processes on $HOST && top'						# uses the function 'xtitle'
alias top_processes="watch -n 1 'ps -aux | sort -nrk 4 | head'"				# monitoring which processes most use CPU
alias treefind_="find . | sed 's/[^/]*\//|   /g;s/| *\([^| ]\)/+--- \1/'"		# displays a tree of the arborescence
alias tree='tree -Cs'									# nice alternative to 'ls'
alias unusedkernels="dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d'"											# show installed but unused linux headers, image, or modules
alias vdir='ls --color=auto --format=long'
alias ver='cat /etc/lsb-release'							# Ubuntu version details
alias version='sudo apt-show-versions'							# show version
alias whichall='{ command alias; command declare -f; } | command which --read-functions --read-alias -a'		# which alias
alias WHOAMI='getent passwd $(whoami) | cut -f 5 -d: | cut -f 1 -d,'			# prints out what the users name, notifyed in the gecos field is
alias wordcount='wc -w $1'								# count number of words in text file



##################################################
# Information (clock and date stuff)		 #
##################################################

alias am-pm='date +"%p"'								# AM/PM (ex. AM)
alias bdate2="date +'%a %Y-%m-%d %H:%M:%S %z'"						# date command (ex. Sun 2011-01-23 05:39:26 -0500)
alias bdate3='date "+%Y-%m-%d %A    %T %Z"'						# date command (ex. 2011-01-23 Sunday    05:39:23 EST)
alias bdate="date '+%a, %b %d %Y %T %Z'"						# date command (ex. Sun, Jan 23 2011 05:39:13 EST)
alias cal='cal -3' 									# show 3 months by default
alias date_='TZ=$TZ-72 date +%d.%m.%Y'							# solaris: get current date + 72 hours
alias dateformatcodes='date --help | sed -n '/^FORMAT/,/%Z/p''				# alias for seeing date's format codes
alias dateh='date --help|sed "/^ *%a/,/^ *%Z/!d;y/_/!/;s/^ *%\([:a-z]\+\) \+/\1_/gI;s/%/#/g;s/^\([a-y]\|[z:]\+\)_/%%\1_%\1_/I"|while read L;do date "+${L}"|sed y/!#/%%/;done|column -ts_'								# view all date formats, quick reference help alias
alias day='date +%A'									# day of the week (ex. Saturday)
alias DAY='date "+%A" | tr '[a-z]' '[A-Z]''						# day (text) (ex. SATURDAY)
alias day#='date +%d'									# date (numeric) (ex. 22)
alias daysleft='echo "There are $(($(date +%j -d"Dec 31, $(date +%Y)")-$(date +%j))) left in year $(date +%Y)."'	# how many days until the end of the year
alias epochdaysleft="perl -e 'printf qq{%d\n}, time/86400;'"				# perl one-liner to determine number of days since the Unix epoch
alias epochtime='date +%s'								# report number of seconds since the Epoch (ex. 1295779549)
alias month='date +%B'									# month (ex. January)
alias MONTH='date "+%B" | tr '[a-z]' '[A-Z]''						# month (text) (ex. JANUARY)
alias mytime='date +%H:%M:%S'								# shows just the current time (ex. 05:46:05)
alias ntpdate='sudo ntpdate ntp.ubuntu.com pool.ntp.org'				# time synchronisation with NTP (ex. 23 Jan 05:46:29)
alias oclock='read -a A<<<".*.**..*....*** 8 9 5 10 6 0 2 11 7 4";for C in `date +"%H%M"|fold -w1`;do echo "${A:${A[C+1]}:4}";done'   # odd clock
alias onthisday='grep -h -d skip `date +%m/%d` /usr/share/calendar/*'			# on this day
alias onthisday_='firefox http://en.wikipedia.org/wiki/$(date +'%b_%d')'		# what happened on this day in history?
alias secconvert='date -d@1234567890'							# convert seconds to human-readable format (ex. Fri Feb 13 18:31:30 EST 2009)
alias stamp='date "+%Y%m%d%a%H%M"'							# timestamp (ex. 20110123Sun0545)
alias time2='date +"%I:%M"'								# time (hours:minutes) (ex. 05:13)
alias time3='date +"%l:%M %p"'								# time (ex. 5:13 AM)
alias time4='date +"%H:%M"'								# time (hours:minutes) (ex. 05:13)
alias timestamp='date "+%Y%m%dT%H%M%S"'							# timestamp (ex. 20110123T054906)
alias today='date +"%A, %B %-d, %Y"'							# date command (ex. Sunday, January 23, 2011)
alias weeknum='date +%V'								# perl one-liner to get the current week number (ex. 03)



##################################################
# Miscellaneous					 #
##################################################

alias -- --='-;-'
alias -- ---='-;-;-'
alias -- ----='-;-;-;-'
alias -- -----='-;-;-;-;-'
alias ++='+;+'
alias +++='+;+;+'
alias ++++='+;+;+;+'
alias +++++='+;+;+;+;+'
alias 7z_it='7z a -mx=9 -ms=on archive.7z $1'						# create solid archive (best compression) with 7z
alias addrepo='sudo add-apt-repository'							# add a repo to repo .list
alias alert_helper='history|tail -n1|sed -e "s/^\s*[0-9]\+\s*//" -e "s/;\s*alert$//"'	# notified when job run in terminal is done using NotifyOSD
alias alert='notify-send -i gnome-terminal "Finished Terminal Job" "[$?] $(alert_helper)"'	# usage: sleep 5; alert
alias alph='cat "$1" | sort > "$1"'							# alphabetizes a file
alias alsamixer='alsamixer -V all'
alias bashrc-copy-r='sudo cp /root/.bashrc ~/.bashrc'
alias bashrc-copy='sudo cp ~/.bashrc /root/.bashrc'
alias bashrc-cpr='sudo cp ~/.bashrc /root/.bashrc && cp ~/.bashrc ~/Temp && gedit ~/.bashrc && exit'
alias bashrc='gedit ~/.bashrc & exit'
alias bashrc-root='sudo gedit ~/.bashrc & exit'
alias bashrc-temp='cp ~/.bashrc ~/Temp'
alias bbc='lynx -term=vt100 http://news.bbc.co.uk/text_only.stm'
alias bedit='vim ~/.bashrc; source ~/.bashrc'
alias beep='echo -en "\007"'								# ring the bell
alias bgedit='gedit ~/.bashrc; source ~/.bashrc'
alias blipfm="mpg123 `curl -s http://blip.fm/all | sed -e 's#"#\n#g'  | grep mp3$  | xargs`"	# play random music from blip.fm
alias capture='IMAGE="$HOME/Pictures/capture-`date +%Y%m%d%H%M%S`.png"; import -frame $IMAGE; echo "Image saved as $IMAGE"'	# save portion of desktop as image
alias cic='set completion-ignore-case On'						# make tab-completion case-insensitive
alias clisp='clisp -q'
alias commentremove="sed 's/[[:blank:]]*#.*//; /^$/d' "$1""				# this will remove comments that are at the end of lines
alias compiz-replace='compiz --replace'							# refreshes compiz (fixes drag/drop issue, among others)
alias cut80='/usr/bin/cut -c 1-80'							# truncate lines longer than 80 characters (for use in pipes)
alias debrepack='sudo dpkg-repack'							# just an easier-to-remember alias for 'dpkg-repack'
alias differ='sdiff --suppress-common-lines'						# bash alias for sdiff: differ
alias dmregister='lynx http://desmoinesregister.com'
alias dos2unix_='perl -pi -e 's/\r\n/\n/g' *'
alias downNuncompress='wget http://URL/FILE.tar.gz -O- | tar xz'			# download a file and uncompress it while it downloads
# alias downNuncompress='curl http://URL/FILE.tar.gz | tar xz'				# download a file and uncompress it while it downloads
alias du0='du --max-depth=0'
alias du1='du --max-depth=1'
alias ebrc='nano ~/.bashrc'
alias ebrcupdate='source ~/.bashrc'
alias edit='nano'
alias elog='tai64nlocal'
alias encryptall='for f in * ; do [ -f $f ] && openssl enc -aes-256-cbc -salt -in $f -out $f.enc -pass file:/tmp/password-file ; done'	# encrypt every file in current directory with 256-bit AES, retaining original
alias fixmount='sudo e2fsck -f /dev/sda1'						# repair device booting/mounting error (for /dev/sda1)
alias fixopera='rm -r ~/.opera/{mail,lock}'
alias fixres='xrandr --size 1600x1200'      						# reset resolution
alias fix_stty='stty sane'								# restore terminal settings when they get completely screwed up
alias flv2ogg='for i in $(ls *.flv); do ffmpeg2theora -v 6 --optimize $i; done'		# convert all FLV's in a directory to Ogg Theora (video)
alias foldpb='pbpaste | fold -s | pbcopy'						# make text in clipboard wrap so as to not exceed 80 characters
alias funkcje="grep -o '^[a-zA-Z]\{1,\}.(*)' ~/.bashrc"
alias gdbbt='gdb -q -n -ex bt -batch'							# print stack trace of a core file without needing to enter gdb interactively
alias gifted='giftd -d && giFTcurs'
alias gitk='screen -d -m gitk'
alias gmail='sh /$HOME/.scripts/gmail.sh'
alias googlevideo='wget -qO- "VURL" | grep -o "googleplayer.swf?videoUrl\\\x3d\(.\+\)\\\x26thumbnailUrl\\\x3dhttp" | grep -o "http.\+" | sed -e's/%\([0-9A-F][0-9A-F]\)/\\\\\x\1/g' | xargs echo -e | sed 's/.\{22\}$//g' | xargs wget -O "$1"'	# Google video download
alias gsop='gmplayer http://localhost:8909 -prefer-ipv4'
alias head='head -n $((${LINES:-`tput lines 2>/dev/null||echo -n 12`} - 2))'		# alias HEAD for automatic smart output
alias hiresvideo='mplayer -framedrop -vfm ffmpeg -lavdopts lowres=1:fast:skiploopfilter=all'	# play high-res video files on a slow processor
alias image2pdf='convert -adjoin -page A4 *.jpeg multipage.pdf'				# convert images to a multi-page pdf
alias irb='irb --readline -r irb/completion -rubygems'
alias jargon='wget -m http://catb.org/~esr/jargon/html/ -nH --cut-dirs=2 -np -L -P ~/Jargon/'
alias kernbuild='make -j3 && make modules_install && ls -ld ../linux && date'		# compile kernel, install modules, display kernel vers & date
alias kfire='for i in `ps aux | grep [F]irefox `; do echo $i; kill $(($i)); done; '
# alias kfire='kill $(pidof firefox)'
# alias kfire='kill $(ps aux | awk '/firefox/ {print $2}' | tr '\n' ' ')'
alias killall='killall -u $USER -v' 							# only kill our own processes, and also be verbose about it
alias killall_wine='wineserver -k'							# stop all Wine apps and processes
alias lastlog='lastlog | grep -v Never'
alias less='less -Mw'
alias lssd='ps ax | grep -v grep | grep -i firefox | while read pid; do kill "${pid%% *}"; done'
alias lstexfont='ls {/usr/share/texmf-dist/tex/latex/psnfss/*.sty,/usr/share/texmf-dist/tex/latex/pxfonts/*.sty}'
alias lvim="vim -c \"normal '0\""							# open the last file you edited in Vim.
alias makepasswd='makepasswd -minchars 8'
alias make_='xtitle Making $(basename $PWD) ; make'					# uses the function 'xtitle'
alias mencoder-join='mencoder -forceidx -ovc copy -oac copy -o'				# just add: whatever.avi whatever.pt1.avi whatever.pt2.avi ...
alias memlimit='ulimit -v 1000000; $1'							# limit memory usage per script/program
alias mic_record='arecord -q -f cd -r 44100 -c2 -t raw | lame -S -x -h -b 128 - `date +%Y%m%d%H%M`.mp3'	# record microphone input and output to date stamped mp3 file
alias mid='printf "\e[8;24;80;t"'							# resize participating terminals to classic 80x24 size
alias minicom='minicom -c on' 								# enable colour (sudo apt-get install minicom)
alias mkdirday='mkdir `date +%Y%m%d`_$1'						# (by Karl Voit) creates directory that starts with current day
alias mkdsp='sudo mknod /dev/dsp c 14 3 && sudo chmod 777 /dev/dsp'			# remake /dev/dsp
alias mkpkg='makepkg -csi'
alias mp3ogg='mp32ogg *.mp3 && rm *.mp3'
alias mpfb='mplayer -vo fbdev -xy 1024 -fs -zoom "$1"'					# watch a movie in linux without the X windows system
alias mpfb_='mplayer -vo fbdev2 -fs -zoom -xy 1440'
alias mtrue='sudo truecrypt /media/usbdisk/$USER.tc ~/$USER'
alias n2r='sudo /etc/init.d/nginx stop && sleep 2 && sudo /etc/init.d/nginx start'
alias ncftp='xtitle ncFTP ; ncftp'							# uses the function 'xtitle'
alias nytimes='lynx -term=vt100 http://nytimes.com'
alias passwords='passwd && rm -rf ~/.gnome2/keyrings/*'					# removes keyring passwords and lets you change user password
alias pipinstall='sudo pip install'
alias ppa-purge='sudo ppa-purge'
alias pstree='/sw/bin/pstree -g 2 -w'
alias puttyreload='export TERM=putty && source ~/.bashrc'
alias quota='quota -s'  								# human readable quota!
alias recursivetouch='find . -exec touch {} \;'						# be careful with this as it can modify time stamp of files
alias repo='gksudo gedit /etc/apt/sources.list'
alias restart-apache='sudo /etc/init.d/apache2 restart'
alias retheme='sudo gnome-settings-daemon'						# refreshes the theme to fix grey basic theme error at startup
alias rkhunter='sudo rkhunter -c'
alias rmao='find . -iname a.out -exec rm {} \;'
alias rm_DS_Store_files='find . -name .DS_Store -exec rm {} \;'				# removes all .DS_Store file from the current dir and below
alias rsync-me='sudo rsync -a -v --progress --delete --modify-window=1 -s $HOME /home/rsync'
alias scpresume='rsync --partial --progress --rsh=ssh'
# alias screencast='ffmpeg -f alsa -ac 2 -i hw:0,0 -f x11grab -r 30 -s 1280x800+0+0 -i :0.0 -acodec pcm_s16le -vcodec libx264 -vpre lossless_ultrafast -threads 0 -y output.mkv'
# alias screencast='ffmpeg -f x11grab -r 30 -s 1280x800 -i :0.0 $HOME/outputFile.mpg'	# record a screencast and convert it to an mpeg
alias screencast="ffmpeg -y -f alsa -ac 2 -i pulse -f x11grab -r 30 -s `xdpyinfo | grep 'dimensions:'|awk '{print $2}'` -i :0.0 -acodec pcm_s16le output.wav -an -vcodec libx264 -vpre lossless_ultrafast -threads 0 output.mp4"		# capture video of a linux desktop
alias screenr='screen -r $(screen -ls | egrep -o -e '[0-9]+' | head -n 1)'		# quick enter into a single screen session
alias screen_restart='sudo /etc/init.d/gdm restart'					# restarts screen to login screen so as to get back in
alias sdiff='/usr/bin/sdiff --expand-tabs --ignore-all-space --strip-trailing-cr --width=160'	# sdiff the way it was at IBM
alias sdirs='source ~/.dirs'
alias service='sudo service'								# access a system service
alias sh_diff='diff -abBpur'
alias sh_indent='indent -nsaf -npcs -cli2 -i2 -lp -nprs -nsaw -nut -cbi2 -bli0 -bls -nbad -npsl'
alias shot!='archey && scrot -d 5 -c screen_`date +%Y-%m-%d`.png'			# is also a function of shot which does the screen for one window
alias show_='cat ~/.dirs'
alias show-colors='~/.bin/colors.sh'
alias show-info='~/.bin/info.pl'
alias show_options='shopt'								# show_options: display bash options settings
alias showrepo='cat /etc/apt/sources.list `ls /etc/apt/sources.list.d/*.list` | egrep -v "^$"'
alias sh_svnstat="svn status | awk '/^[^?]/'"
alias sourcea='source ~/.aliases.bash'							# to source this file (to make changes active after editing)
alias spaceremover="sed -i 's/\s\+/ /g;s/\s*$//' $1"					# get rid of multiple spaces/tabs in a text file
alias ssinfo='perl ~/.scripts/ssinfo.pl'
# alias svnaddall='find "$PWD" -exec svn add {} 2>/dev/null \;'				# add all files recursively
alias svnaddall='svn status | grep "^\?" | awk "{print \$2}" | xargs svn add'
alias svndelall='svn status | grep "^\!" | awk "{print \$2}" | xargs svn delete'
alias svnrmallentries='find . -name .svn -print0 | xargs -0 rm -rf'			# remove all .svn directories recursively
alias tailm='multitail'
alias tarred='( ( D=`builtin pwd`; F=$(date +$HOME/`sed "s,[/ ],#,g" <<< ${D/${HOME}/}`#-%F.tgz); tar --ignore-failed-read --transform "s,^${D%/*},`date +${D%/*}.%F`,S" -czPf "$"F "$D" &>/dev/null ) & )'					# create date-based tgz of current dir (runs in background)
# alias themeinfo='perl ~/Scripts/info.pl'
alias thumbit='mogrify -resize 25%'
alias tinyurl='~/.scripts/tinyurl'							# converts url to tinyurl
alias tkeys='tmux list-keys'  								# shows all tmux keys
alias trace='~/.scripts/trace'								# visual traceroute
alias txt2md='rename 's/\.txt$/\.md$/i' *'						# batch rename extension of all .txt files to .md files in a folder
alias ugrub2='sudo update-grub2'							# update grub2
alias ugrub='sudo update-grub'								# update grub
alias updatedb='sudo updatedb'
alias updatefonts='sudo fc-cache -vf'
alias usbb='rsync -avz /media/usbdisk/ ~/backup/usb/'
alias utrue='sudo truecrypt -d'
alias viaco='task="$(basename "$(pwd)")"; if [ -f "$task.c" ]; then vi -c "set mouse=n" -c "set autoread" -c "vsplit $task.out" -c "split $task.in" -c "wincmd l" -c "wincmd H" $task.c; fi'							# setup Vim environment for USACO coding
alias video_record='mencoder -tv driver=v4l2:device=/dev/video1:input=1:norm=ntsc:alsa=1:adevice=hw.1:audiorate=48000:immediatemode=0:amode=1 tv:// -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=1600:vhq:v4mv:keyint=250 -vf pp=de,pullup,softskip -oac mp3lame -lameopts abr:br=64:vol=2 -ffourcc xvid -o /home/me/Temp/$1.avi'	# record external video feed
alias webcam='mplayer -cache 128 -tv driver=v4l2:width=176:height=177 -vo xv tv:// -noborder -geometry "95%:93%" -ontop'	# mplayer webcam window for screencasts
alias webcam_record='ffmpeg -an -f video4linux2 -s 640x480 -r 15 -i /dev/video0 -vcodec mpeg4 -vtag XVID /home/me/Temp/webcam_$1.avi'	# webcam record
alias webshare='python -c "import SimpleHTTPServer; SimpleHTTPServer.test();"'
alias wiki='wikipedia2text -p'								# convert wiki to text output
alias xinitrc='vim ~/.xinitrc'
alias xsnow='(killall xsnow ; sleep 3 ; exec xsnow -nosanta -notrees -norudolf -nokeepsnow >& /dev/null &)'	# xsnow



##################################################
# Miscellaneous Fun				 #
##################################################

alias 99bottles='x="bottles of beer";y="on the wall";for b in {99..1};do echo "$b $x $y, $b $x. Take one down pass it around, $(($b-1)) $x $y"; sleep 3;done'
alias addictive='count="1" ; while true ; do read next ; if [[ "$next" = "$last" ]] ; then count=$(($count+1)) ; echo "$count" ; else count="1" ; echo $count ; fi ; last="$next" ; done'								# simple addicting bash game
alias aljazeera='rtmpdump -v -r rtmp://livestfslivefs.fplive.net/livestfslive-live/ -y "aljazeera_en_veryhigh" -a "aljazeeraflashlive-live" -o -| mplayer -'												# watch Aljazeera live
alias awesome='while $i;do `notify-send -t 200 "You are awesome :)"`;sleep 60; done;'		# get informed periodically by your box that you are awesome
alias busy='for i in `seq 0 100`;do timeout 6 dialog --gauge "Install..." 6 40 "$i";done'	# pretend to be busy in office to enjoy a cup of coffee
alias busy2='my_file=$(find /usr/include -type f | sort -R | head -n 1); my_len=$(wc -l $my_file | awk "{print $1}"); let "r = $RANDOM % $my_len" 2>/dev/null; vim +$r $my_file'
alias busy3='cat /dev/urandom | hexdump -C | highlight ca fe 3d 42 e1 b3 ae f8 | perl -MTime::HiRes -pnE "Time::HiRes::usleep(rand()*1000000)"'
# alias earth='mv ~/Pictures/Backgrounds/mercator.jpg ~/Pictures/Backgrounds/mercator.`timestamp`.jpg | wget -r -N http://static.die.net/earth/mercator/1600.jpg -O ~/Pictures/Backgrounds/mercator.jpg && gconftool-2 --type string --set /desktop/gnome/background/picture_filename ~/Pictures/Backgrounds/mercator.jpg'	# live earth wallpaper (downloads and saves each time) (GNOME2)
# alias earth='mv ~/Pictures/Backgrounds/mercator.jpg ~/Pictures/Backgrounds/mercator.`timestamp`.jpg | wget -r -N http://static.die.net/earth/mercator/1600.jpg -O ~/Pictures/Backgrounds/mercator.jpg && gsettings set org.gnome.desktop.background picture-uri "file://$HOME/Pictures/Backgrounds/mercator.jpg"'	# live earth wallpaper (downloads and saves each time) (GNOME3)
# alias earth='rm -f ~/Pictures/Backgrounds/mercator.jpg && wget -r -N http://static.die.net/earth/mercator/1600.jpg -O ~/Pictures/Backgrounds/mercator.jpg && gconftool-2 --type string --set /desktop/gnome/background/picture_filename ~/Pictures/Backgrounds/mercator.jpg'	# live earth wallpaper (GNOME2)
alias earth='rm -f ~/Pictures/Backgrounds/mercator.jpg && wget -r -N http://static.die.net/earth/mercator/1600.jpg -O ~/Pictures/Backgrounds/mercator.jpg && gsettings set org.gnome.desktop.background picture-uri "file://$HOME/Pictures/Backgrounds/mercator.jpg"'	# live earth wallpaper (GNOME3)
alias einsteiny='A=1;B=100;X=0;C=0;N=$[$RANDOM%$B+1];until [ $X -eq $N ];do read -p "N between $A and $B. Guess? " X;C=$(($C+1));A=$(($X<$N?$X:$A));B=$(($X>$N?$X:$B));done;echo "Took you $C tries, Einstein";'						# numbers guessing game
alias etchasketch='c=12322123;x=20;y=20;while read -sn1 p;do k=${c:(p-1)*2:2};let x+=$((k/10-2));let y+=$((k%10-2));echo -en \\033[$y\;"$x"HX;done'	# use the 1 2 3 and 4 keys to move the cursor around the screen (It's an etch-a-sketch for your terminal!)
alias excuses='echo `telnet bofh.jeffballard.us 666 2>/dev/null` |grep --color -o "Your excuse is:.*$"'		# excuses
alias freechess='telnet fics.freechess.org 5000'						# connects to a telnet server for free internet chess
alias funfacts='wget http://www.randomfunfacts.com -O - 2>/dev/null | grep \<strong\> | sed "s;^.*<i>\(.*\)</i>.*$;\1;";'
alias funknet='telnet the-funk.net 7000'							# Access to Funk.net
alias futurama='curl -Is slashdot.org | sed -n '5p' | sed 's/^X-//''				# get Futurama quotations from slashdot.org servers
alias guitartune='for n in E2 A2 D3 G3 B3 E4;do play -n synth 4 pluck $n repeat 2;done'		# tune your guitar from the command line
alias iamcow='fortune | cowsay'
alias iamsurprise='fortune | cowsay -f $(random_cow)'
alias insults='wget http://www.randominsults.net -O - 2>/dev/null | grep \<strong\> | sed "s;^.*<i>\(.*\)</i>.*$;\1;";'
alias lotto='shuf -i 1-49 -n 6 | sort -n | xargs'						# lotto generator
alias matrix='echo -e "\e[32m"; while :; do for i in {1..16}; do r="$(($RANDOM % 2))"; if [[ $(($RANDOM % 5)) == 1 ]]; then if [[ $(($RANDOM % 4)) == 1 ]]; then v+="\e[1m $r   "; else v+="\e[2m $r   "; fi; else v+="     "; fi; done; echo -e "$v"; v=""; done'
alias matrix2='echo -e "\e[31m"; while $t; do for i in `seq 1 30`;do r="$[($RANDOM % 2)]";h="$[($RANDOM % 4)]";if [ $h -eq 1 ]; then v="\e[1m $r";else v="\e[2m $r";fi;v2="$v2 $v";done;echo -e $v2;v2="";done;'
alias matrix3='COL=$(( $(tput cols) / 2 )); clear; tput setaf 2; while :; do tput cup $((RANDOM%COL)) $((RANDOM%COL)); printf "%$((RANDOM%COL))s" $((RANDOM%2)); done'
alias matrix4='echo -ne "\e[32m" ; while true ; do echo -ne "\e[$(($RANDOM % 2 + 1))m" ; tr -c "[:print:]" " " < /dev/urandom | dd count=1 bs=50 2> /dev/null ; done'
alias matrix5='tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=lcase,unblock | GREP_COLOR="1;32" grep --color "[^ ]"'
alias roulette='[ $[ $RANDOM % 6 ] == 0 ] && echo Die || echo Live'				# command line Russian roulette
alias screensaver='for ((;;)); do echo -ne "\033[$((1+RANDOM%LINES));$((1+RANDOM%COLUMNS))H\033[$((RANDOM%2));3$((RANDOM%8))m$((RANDOM%10))"; sleep 0.1 ; done'												# terminal screensaver
alias starwars='telnet towel.blinkenlights.nl'							# the famous starwars ASCII version from telnet
alias termvideo_bw='mplayer -vo aa'								# watch movies in ASCII (just direct to the video)
alias termvideo='mplayer -vo caca'								# watch movies in ASCII (just direct to the video)
alias wooters='telnet zerocarbs.wooters.us'							# connects to a telnet service monitoring Woot (Gives you an updating woot! item tracker!)



##################################################
# Network/Internet -oriented stuff		 #
##################################################

alias appson="netstat -lantp | grep -i stab | awk -F/ '{print $2}' | sort | uniq"	# view only the process name using an internet connection
alias bandwidth='dd if=/dev/zero of=/dev/null bs=1M count=32768'			# processor / memory bandwidthd? in GB/s
alias browse_bonjour='dns-sd -B'							# browse services advertised via Bonjour
# alias daemons='ls /var/run/daemons'  							# daemon managment (ommited for function)
alias dbdumpcp='scp -P 1234 username@12.34.56.78:$HOME/Backup/www/data/someSite/db.sql $HOME/Backup/data/db.sql'	# copy remote db to local
alias dns='cat /etc/resolv.conf'							# view DNS numbers
alias domain2ban='~/.scripts/Domain2Ban.sh'
alias estab='ss -p | grep STA' 								# view only established sockets (fails if "ss" is screensaver alias)
alias finchsync='java -jar ~/finchsync/finchsync.jar'					# start FinchSync Admin
# alias ftop='watch -d -n 2 'df; ls -FlAt;''						# like top, but for files
alias hdinfo='hdparm -i[I] /dev/sda'							# hard disk information - model/serial no.
alias hostip='wget http://checkip.dyndns.org/ -O - -o /dev/null | cut -d: -f 2 | cut -d\< -f 1'
alias hostname_lookup='lookupd -d'							# interactive debugging mode for lookupd (use tab-completion)
alias http_trace='pkt_trace port 80'							# to show all HTTP packets
alias iftop='sudo iftop -i eth0' 							# start "iftop" program (sudo apt-get install iftop)
alias ip4grep="grep -E '([0-9]{1,3}\.){3}[0-9]{1,3}'"					# look for IPv4 address in files
alias ip='curl www.whatismyip.org'
alias ip_info='ipconfig getpacket en1'							# info on DHCP server, router, DNS server, etc (for en0 or en1)
alias ipt80='sudo iptstate -D 80'							# check out only iptables state of http port 80 (requires iptstate)
alias ip_trace='pkt_trace ip'								# to show all IP packets
alias ipttrans='sudo iptstate -D 51413'							# iptables state of Transmission-Daemon port (requires iptstate)
alias listen='sudo netstat -pnutl' 							# lists all listening ports together with PID of associated process
alias lsock='sudo /usr/sbin/lsof -i -P'							# to display open sockets ( -P option to lsof disables port names)
alias memrel='free && sync && echo 3 > /proc/sys/vm/drop_caches && free'		# release memory used by the Linux kernel on caches
alias net1='watch --interval=2 "sudo netstat -apn -l -A inet"'
alias net2='watch --interval=2 "sudo netstat -anp --inet --inet6"'
alias net3='sudo lsof -i'
alias net4='watch --interval=2 "sudo netstat -p -e --inet --numeric-hosts"'
alias net5='watch --interval=2 "sudo netstat -tulpan"'
alias net6='sudo netstat -tulpan'
alias net7='watch --interval=2 "sudo netstat -utapen"'
alias net8='watch --interval=2 "sudo netstat -ano -l -A inet"'
alias netapps="lsof -P -i -n | cut -f 1 -d ' '| uniq | tail -n +2"
alias nethogs='sudo nethogs eth0' 							# start "nethogs" program (sudo apt-get install nethogs)
alias netl='sudo nmap -sT -O localhost'
alias netscan='sudo iwlist wlan0 scan'							# to scan your environment for available networks, do the following
alias netstats='sudo iwspy wlan0'							# if card supports it, you can collect wireless statistics by using
alias network='sudo lshw -C network' 							# view network device info
alias networkdump='sudo tcpdump not port 22' 						# dump all the network activity except ssh stuff
alias nmr='sudo /etc/rc.d/networkmanager restart'
alias nsl='netstat -f inet | grep -v CLOSE_WAIT | cut -c-6,21-94 | tail +2'		# show all programs connected or listening on a network port
alias ns='netstat -alnp --protocol=inet | grep -v CLOSE_WAIT | cut -c-6,21-94 | tail +2'
alias openports='sudo netstat -nape --inet' 						# view open ports
alias oports="echo 'User:      Command:   Port:'; echo '----------------------------' ; lsof -i 4 -P -n | grep -i 'listen' | awk '{print \$3, \$1, \$9}' | sed 's/ [a-z0-9\.\*]*:/ /' | sort -k 3 -n |xargs printf '%-10s %-10s %-10s\n' | uniq"	# lsof (cleaned up for just open listening ports)
alias pkt_trace='sudo tcpflow -i `active_net_iface` -c'
alias ports='lsof -i -n -P' 								# view programs using an internet connection
alias portstats='sudo netstat -s' 							# show statistics for all ports
alias proxy1='ssh -p 1234 -D 5678 username@12.34.56.78'					# SOCKS proxy - these anonomise browsing - 12.34.56.78
alias proxy2='ssh -p 8765 -D 4321 username@87.65.43.21'					# SOCKS proxy - these anonomise browsing - 87.65.43.21
alias QUERY='psql -h $MYDBHOST -p 5432 -d $MYDB -U $MYLOGIN --no-align'			# lazy SQL QUERYING
alias randomip='echo $((RANDOM%256)).$((RANDOM%256)).$((RANDOM%256)).$((RANDOM%256))'	# generate a random IP address
alias ramvalue='sudo dd if=/dev/mem | cat | strings'					# will show you all the string (plain text) values in ram
alias randommac='python -c "from itertools import imap; from random import randint; print ':'.join(['%02x'%x for x in imap(lambda x:randint(0,255), range(6))])"'										# generate random valid mac addresses
alias rdp='rdesktop -u "$USER" -g 1600x1200 -D -r disk:home=/home -r clipboard:PRIMARYCLIPBOARD'	# quick full screen RDP connection
alias remote='ssh -p 1234 12.34.56.78'							# access some remote host
alias restartnet='sudo /etc/rc.d/network restart;sudo /etc/rc.d/wicd restart'
alias rssup='php /srv/http/rssupdate.php'
alias setessid='sudo iwconfig wlan0 essid network-essid'				# set the essid, which identifies the network access point you want
alias smtp_trace='pkt_trace port smtp'							# to show all SMTP packets
alias someDBdump='sudo mysqldump someDB -uroot -p > $HOME/www/_dbs/someDB.sql'
alias spavr='gtkterm -c avr'
# alias spavr='sudo chmod a=rw /dev/ttyUSB0; gtkterm -c avr'
alias speedtest='speedtest --share'							# speedtest - test internet speed and share image of results
alias spk800i='gtkterm -c k800i'
# alias spk800i='sudo chmod a=rw /dev/rfcomm0; gtkterm -c k800i'
alias sql='mysql -p -u root'
alias sync='java -jar ~/finchsync/finchsync.jar -nogui'					# sync to PDA .. well, that'll be a sync then! - start FinchSync SVR
alias syncoff='java -jar ~/Apps/FinchSync/finchsync.jar -stopserver'			# sync to PDA .. well, that'll be a sync then! - stop FinchSync SVR
alias tcpstats='sudo netstat -st' 							# show statistics for tcp ports
alias tcp_='sudo netstat -atp' 								# list all TCP ports
alias tcp_trace='pkt_trace tcp'								# to show all TCP packets
alias topsites='curl -s -O http://s3.amazonaws.com/alexa-static/top-1m.csv.zip ; unzip -q -o top-1m.csv.zip top-1m.csv ; head -1000 top-1m.csv | cut -d, -f2 | cut -d/ -f1 > topsites.txt'							# get a list of top 1000 sites from alexa
alias tproxy='ssh -ND 8118 user@server&; export LD_PRELOAD="/usr/lib/libtsocks.so"'	# creates a proxy based on tsocks
alias udpstats='sudo netstat -su' 							# show statistics for udp ports
alias udp='sudo netstat -aup' 								# list all UDP ports
alias udp_trace='pkt_trace udp'								# to show all UDP packets
alias uploads='cd /some/folder'								# access some folder
alias vncup='x11vnc -nopw -ncache 10 -display :0 -localhost'
alias website_dl='wget --random-wait -r -p -e robots=off -U mozilla "$1"'		# download an entire website
alias website_images='wget -r -l1 --no-parent -nH -nd -P/tmp -A".gif,.jpg" "$1"'	# download all images from a site
alias whois='whois -H'
alias wireless_sniffer='sudo ettercap -T -w out.pcap -i wlan0 -M ARP // //'		# sniff who are using wireless. Use wireshark to watch out.pcap
alias wscan_='iwlist scan'								# terminal network scan for wireless signals
alias wwwmirror2='wget -k -r -l ${2} ${1}'						# wwwmirror2 usage: wwwmirror2 [level] [site_url]
alias wwwmirror='wget -ErkK -np ${1}'



##################################################
# Package holding, making, and installation	 #
##################################################

alias checkinstall-force='sudo checkinstall --dpkgflags "--force-overwrite"'
alias checkinstall-noinstall='sudo checkinstall -y --fstrans=no --install=no'
alias checkinstall='sudo checkinstall -y --fstrans=no'
alias debinstall-force='sudo dpkg -i --force-overwrite'
alias debinstall='sudo dpkg -i'
alias diffinstall='diff /tmp/install.pre /tmp/install.pos | grep \"^>\" | sed \"s/^> //g\"'	# run diffinstall fourth, after diffinstall to show what files were copied in your system
alias postinstall='sudo find / ! \( -path /proc -prune -o -path /tmp -prune -o -path /dev -prune -o -path /mnt -prune \) > /tmp/install.pos'	# run postinstall third, after "make install"
alias preinstall='sudo find / ! \( -path /proc -prune -o -path /tmp -prune -o -path /dev -prune -o -path /mnt -prune \) > /tmp/install.pre'	# run preinstall first, then "make install"



##################################################
# Permissions					 #
##################################################

alias 000='chmod 000 -R'
alias 640='chmod 640 -R'
alias 644='chmod 644 -R'									# default permission for ('~/.dmrc' file)
alias 755='chmod 755 -R'									# default permissions for $HOME (excluding '~/.dmrc' file)
alias 775='chmod 775 -R'
alias 777='chmod 777 -R'
alias mx='chmod a+x'
alias perm='stat --printf "%a %n \n "'								# requires a file name e.g. perm file
alias permall='777'
alias permhome='chmod 755 -R $HOME && chmod 644 $HOME/.dmrc'
alias restoremod='chgrp users -R .;chmod u=rwX,g=rX,o=rX -R .;chown $(pwd |cut -d / -f 3) -R .'	# restore user,group and mod of an entire website



##################################################
# Personal help					 #
##################################################

alias a?='cat ~/.alias.help'
alias dn='OPTIONS=$(\ls -F | grep /$); select s in $OPTIONS; do cd $PWD/$s; break;done'
alias espanol='echo -e \"á Á é É í Í ó Ó ú Ú ñ Ñ ü Ü ¿ ¡ ¢ ‘ ’ “ ” „ ‚ …\"'
alias f?='cat ~/.function.help'
alias help='OPTIONS=$(\ls ~/.tips -F);select s in $OPTIONS; do less ~/.tips/$s; break;done'
alias testh='help test|sed -e :a -e "$!N;s/\(-n STRING\)\n/\1, /;s/\n\( \{23\}\| \{4\}\([a-z]\)\)/ \2/;ta;P;D"|sed "s/ \{1,\}/ /g;/^ $/d;/:$/s/^/\n/"|sed -n "/File operators:/,\$p"'						# test quick help alias





##################################################
# Secure-delete substitution			 #
##################################################

alias sfill-freespace='sudo sfill -I -l -l -v'
alias sfill-f='sudo sfill -f -l -l -v -z'
alias sfill='sudo sfill -l -l -v -z'
alias sfill-usedspace='sudo sfill -i -l -l -v'
alias smem-f='sudo sdmem -f -l -l -v'
alias smem-secure='sudo sdmem -v'
alias smem='sudo sdmem -l -l -v'
alias srm-m='sudo srm -f -m -z -v'
alias srm='sudo srm -f -s -z -v'
alias sswap-sda5='sudo sswap -f -l -l -v -z /dev/sda5'
alias sswap='sudo sswap -f -l -l -v -z'
alias swapoff='sudo swapoff /dev/sda5'
alias swapon='sudo swapon /dev/sda5'



##################################################
# Set up auto extension stuff			 #
##################################################

###### If -s flags present, define suffix alias: if command word on command line is in form `text.name',
# where text is any non-empty string, its replaced by text 'value text.name'. Note that names treated as literal
# string, not pattern.  A trailing space in value is not special in this case. For example, alias -s ps=gv
# will cause command `*.ps' to be expanded to `gv *.ps'. As alias expansion is carried out earlier than globbing,
# `*.ps' will then be expanded. Suffix aliases constitute different name space from other aliases (so in above
# example its still possible to create alias for command ps) and two sets are never listed together.
# alias -s avi=mplayer
# alias -s bz2=tar -xjvf
# alias -s com=$BROWSER
# alias -s cpp=vim
# alias -s doc=soffice
# alias -s eps=eog
# alias -s gif=eog
# alias -s gz=tar -xzvf
# alias -s html=$BROWSER
# alias -s img=mplayer
# alias -s install=$EDITOR
# alias -s iso=mplayer
# alias -s java=$EDITOR
# alias -s jpg=eog
# alias -s mkv=mplayer
# alias -s mp3=mplayer
# alias -s mpeg=mplayer
# alias -s mpg=mplayer
# alias -s mws=maple
# alias -s net=$BROWSER
# alias -s odt=soffice
# alias -s org=$BROWSER
# alias -s pdf=evince
# alias -s php=$BROWSER
# alias -s PKGBUILD=vim
# alias -s png=eog
# alias -s ppt=soffice
# alias -s ps=gv
# alias -s se=$BROWSER
# alias -s sh=vim
# alias -s sxw=soffice
# alias -s tex=$EDITOR
# alias -s txt=$EDITOR
# alias -s wmv=mplayer
# alias -s xls=soffice



##################################################
# Shred substitution				 #
##################################################

alias shred-sda-r='sudo shred -v -z -n 1 /dev/sda'
alias shred-sda='sudo shred -v -z -n 0 /dev/sda'
alias shred-sdb-r='sudo shred -v -z -n 1 /dev/sdb'
alias shred-sdb='sudo shred -v -z -n 0 /dev/sdb'
alias shred-sdc-r='sudo shred -v -z -n 1 /dev/sdc'
alias shred-sdc='sudo shred -v -z -n 0 /dev/sdc'
alias shred-sdd-r='sudo shred -v -z -n 1 /dev/sdd'
alias shred-sdd='sudo shred -v -z -n 0 /dev/sdd'
alias shred-sde-r='sudo shred -v -z -n 1 /dev/sde'
alias shred-sde='sudo shred -v -z -n 0 /dev/sde'
alias shred-sdf-r='sudo shred -v -z -n 1 /dev/sdf'
alias shred-sdf='sudo shred -v -z -n 0 /dev/sdf'
alias shred-sdg-r='sudo shred -v -z -n 1 /dev/sdg'
alias shred-sdg='sudo shred -v -z -n 0 /dev/sdg'



##################################################
# Xterm and Aterm				 #
##################################################

alias aterm='xterm -ls -fg gray -bg black'
alias termb='xterm -bg AntiqueWhite -fg NavyBlue &'
alias termg='xterm -bg AntiqueWhite -fg OliveDrab &'
alias termr='xterm -bg AntiqueWhite -fg DarkRed &'
alias term='xterm -bg AntiqueWhite -fg Black &'
alias xsu='xterm -fn 7x14 -bg DarkOrange4 -fg white -e su &'
alias xtop='xterm -fn 6x13 -bg LightSlateGray -fg black -e top &'



##################################################
##################################################
##################################################










fi	# end interactive check﻿



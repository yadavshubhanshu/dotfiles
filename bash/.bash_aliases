#!/bin/bash
#
#

#Show Aliases and Functions
alias listaliases="alias | sed 's/=.*//'"
alias listfunctions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'" # show non _prefixed functions


# GNU manpages for programs that are GNU ones, and fallback to OSX manpages otherwise
alias man='_() { echo $1; man -M $(brew --prefix)/opt/coreutils/libexec/gnuman $1 1>/dev/null 2>&1;  if [ "$?" -eq 0 ]; then man -M $(brew --prefix)/opt/coreutils/libexec/gnuman $1; else man $1; fi }; _'

#Navigation
alias ll="ls -la"
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias clr="clear;echo 'Currently logged in on $(tty), as $(whoami) in directory $(pwd).'"
alias cls="clr"
alias sudo="sudo "

#Network
alias ip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias gip="dig +short myip.opendns.com @resolver1.opendns.com"

# text formatting, copy/paste
alias copy="pbcopy"
alias paste="pbpaste"
alias quickdiff="diff --side-by-side --suppress-common-lines -W 150"
alias grep="grep --color=auto"

#Remove Apple Meta Files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias cleanup2="find . -type f -name '.AppleD*' -ls -delete"

# Shortcuts
alias dropbox="cd ~/Documents/Dropbox"
alias dl="cd ~/Downloads"
alias desktop="cd ~/Desktop"
alias dev="cd ~/dev"

#Git
alias gs="git status"
alias ga="git add "
alias gr="git remote -v"
alias gra="git remote add "
alias grs="git remote set-url "
alias gc="git commit -m "
alias gpo="git push origin "
alias gpu="git push upstream "

# vagrant
alias vu="vagrant up"
alias vp="vagrant provision"
alias vpshell="vagrant provision --provision-with shell"
alias vr="vagrant reload"
alias vs="vagrant status"
alias vd="vagrant destroy -f"
alias vsus="vagrant suspend"
alias vssh="vagrant ssh"
alias vgs="vagrant global-status"

#Misc
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias date="date '+DATE: %v%nTIME: %H:%M:%S'"
alias quit="exit"
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
alias l25="ssh-add -D;ssh play@10.0.14.25 "

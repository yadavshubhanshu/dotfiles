#!/bin/bash
#set -x
#Adding an appropriate PATH variable for use with MacPorts.
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
export PATH="/usr/local/opt/bash/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="/Users/shubhanshu/dev/softwares/terraform:$PATH"
#Setting the bash directory containing all the settings
export BASH_DIR=~/.bash

#Sourcing all the files
source ${BASH_DIR}/.bash_aliases
source ${BASH_DIR}/.functions
source ${BASH_DIR}/.bash_prompt
source ${BASH_DIR}/.bash_env_vars
source ${BASH_DIR}/.bash_office


# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
    source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

#jenv autocompletion
if which jenv > /dev/null; then eval "$(jenv init -)"; fi


# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
    shopt -s "$option" 2> /dev/null;
done;
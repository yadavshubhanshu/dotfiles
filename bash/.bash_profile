#!/bin/bash




#Adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

#Setting the bash directory containing all the settings
export BASH_DIR=~/.bash

#Sourcing all the files
source ${BASH_DIR}/.bash_aliases
source ${BASH_DIR}/.bash_functions
source ${BASH_DIR}/.bash_env_vars
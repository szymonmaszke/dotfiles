#!/usr/bin/env sh

#######################################################################################
#
#                                   GLOBAL VARIABLES
#
#######################################################################################

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.config/oh-my-zsh
# What to use when using tail
export PAGER=/usr/bin/vimpager
export HISTFILE=$HOME/.zsh_history

# Improved python exceptions and colored output globally
export BETTER_EXCEPTIONS=1
export TBVACCINE=1

#######################################################################################
#
#                                   PATHS EXTENSIONS
#
#######################################################################################

# Add local for things like pip install --user
export PATH=/home/vyz/.local/bin:$PATH

# Set nvim as default editor for both ssh and normal
export EDITOR='nvim'

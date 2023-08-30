#!/bin/bash


SCRIPT=$(realpath -s "$0")
SCRIPT_PATH=$(dirname $SCRIPT)

set -x

ln -s $SCRIPT_PATH/../nvim ~/.config/nvim

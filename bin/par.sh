#!/bin/bash

#set -x # debug

PAR_ROOT=~/code/par              # where you downloaded par
export PYTHONPATH=$PAR_ROOT/lib # where par's Pyro is
$PAR_ROOT/src/parallel.py "$@"  # call it

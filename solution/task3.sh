#!/usr/bin/env bash

set -e


# make whitespaces work in filenames (dont split on space)
IFS='
'
# ive tried to make newlines work but couldnt

basename --multiple $(find . -type f -iname '*.txt') | sort

# i know theres this
# but sort breaks newlines anyways soo
# ill keep the --multiple solution cuz its a cool new option i learnt about
#find . -type f -iname '*.txt' -exec basename {} ';' | sort

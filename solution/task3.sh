#!/usr/bin/env bash

set -e


basename --multiple $(find . -type f -iname '*.txt') | sort

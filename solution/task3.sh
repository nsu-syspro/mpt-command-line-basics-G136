#!/usr/bin/env bash

set -e


basename --multiple $(find . -iname '*.txt') | sort

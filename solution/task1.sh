#!/usr/bin/env bash

set -e


TMP_DIR="$(mktemp --directory)"


tar -xf  "./data/archive-part1.tar" -C "${TMP_DIR}/"
unzip -q "./data/archive-part2.zip" -d "${TMP_DIR}/"

tar -caf "./data/archive-combined.tar.gz" -C "$TMP_DIR" .


rm -r "$TMP_DIR"




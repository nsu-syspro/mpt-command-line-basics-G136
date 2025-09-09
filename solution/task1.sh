#!/usr/bin/env bash

set -e


TMP_DIR="$(mktemp --directory)"


(cd "$TMP_DIR"; mkdir 1 2)


tar -xf "./data/archive-part1.tar" -C "${TMP_DIR}/1/"
unzip   "./data/archive-part2.zip" -d "${TMP_DIR}/2/"

tar -caf "./data/archive-combined.tar.gz" -C "$TMP_DIR" .


rm -r "$TMP_DIR"




#!/bin/bash

find `pwd` -mindepth 1 -maxdepth 3 \( -path '*/.repo' -prune \) -o \( -name "$*" -print \)
find `pwd` -mindepth 3 -maxdepth 3 \( \! -path '*/.repo' \! -path '*/.git' -type d -print \) | parallel -q -j32 find '{}' -name "$*"

#!/bin/bash

find `pwd` -maxdepth 3 \( \! -path '*/.repo/*' \! -path '*/.git/*' \! -path '*/out/*' \! -path '*/host/*' \! -path '*/prebuilt/*' \! -name '*.[ao]' \! -name '*.dex' \! -name '*.class' \! -name '*.jar' -type f -print \) | parallel -q -j32 grep -n -H --color "$*" '{}'
find `pwd` -mindepth 3 -maxdepth 3 \( \! -path '*/.repo/*' \! -path '*/.git/*' \! -path '*/out/*' \! -path '*/host/*' \! -path '*/prebuilt/*' \! -name '*.[ao]' \! -name '*.dex' \! -name '*.class' \! -name '*.jar' -type d -print \) | parallel -q -j32 grep -HRn --exclude-dir ".git" --color "$*" '{}'

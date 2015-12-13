#!/usr/bin/env sh

cd $(dirname $0)

cp index.html output/
cat src/*.md > output/cheatsheet.md
pandoc output/cheatsheet.md -o output/cheatsheet.pdf

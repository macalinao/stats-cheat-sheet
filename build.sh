cd $(dirname $0)

cat src/*.md > output/cheatsheet.md
pandoc output/cheatsheet.md -o output/cheatsheet.pdf

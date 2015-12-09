cd $(dirname $0)

rm -rf output/
mkdir output/
cat src/*.md > output/cheatsheet.md
pandoc output/cheatsheet.md -o output/cheatsheet.pdf

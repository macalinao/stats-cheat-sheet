#!/usr/bin/env sh

cd $(dirname $0)/output
git add -A .
git commit -am "Deploy"
git push origin gh-pages

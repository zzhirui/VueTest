#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# [TODO] : Replace with your username and Repository name
git push -f git@github.com:zzhirui/VueTest.git master:gh-pages

cd -

#!/bin/bash

cd build
wd=`pwd`

for lang in *; do
    cd "${wd}/${lang}"

    # Connect to commit history from deployed repo
    git init
    git remote add production "https://${GITHUB_TOKEN}@github.com/janusvm/aau-project-template-${lang}.git"
    git fetch production
    git reset production/master

    # Check for changes, commit, and push
    git checkout master
    if [[ `git status --porcelain` ]]; then
        git add .
        git commit -m "${TRAVIS_COMMIT_MESSAGE}"
        git push production master
    fi
done

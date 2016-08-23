#!/bin/bash

if [[ $TRAVIS_BRANCH == $GH_RELEASE_BRANCH ]] 
then
  git config credential.helper "store --file=.git/credentials"

  echo "https://$GH_TOKEN:@github.com" > .git/credentials

  git config --global user.email "TravisCI-$GH_TRAVIS_USER:@github.com"
  git config --global user.name "$GH_TRAVIS_USER (via TravisCI)"

  npm run release
fi
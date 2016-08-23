#!/bin/bash

npm install

export PATH=$PWD/node_modules/.bin:$PATH

npm prune

bower install

polylint

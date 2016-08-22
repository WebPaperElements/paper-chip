#!/bin/bash

xvfb-run wct

if [[ $TRAVIS_PULL_REQUEST == 'false' ]] 
then
  wct -s 'default'
fi
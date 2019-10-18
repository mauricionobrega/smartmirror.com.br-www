#!/bin/bash

DIST=../smartmirror.com.br-www-dist

# rm -rf $DIST &&

# npm run build &&

cd $DIST &&

# git init &&

# git remote add origin https://github.com/mauricionobrega/smartmirror.com.br-www.git &&

# git fetch --all &&

git add . &&

git commit -m \"update version\" &&

git checkout origin production

# git push origin production

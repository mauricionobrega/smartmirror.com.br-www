#!/bin/bash

PROJECT_NAME=supermirror.github.io
PROJECT_DIST_FOLDER=./dist
PROJECT_ROOT_FOLDER=./src/_root
DIST_NAME=$PROJECT_NAME-dist
PARENT=..
DIST_PATH=../$PROJECT_NAME-dist
BRANCH=master

# PREPARE FOLDER
rm -rf $DIST_PATH && cd $PARENT/ && git clone https://github.com/supermirror/$PROJECT_NAME.git $DIST_NAME && cd $DIST_NAME && git checkout $BRANCH &&

# BUILD PROJECT
cd $PARENT/$PROJECT_NAME && npm run build &&

cp -R $PROJECT_DIST_FOLDER/* $PARENT/$DIST_NAME &&
cp -R $PROJECT_ROOT_FOLDER/* $PARENT/$DIST_NAME &&
cp CNAME $PARENT/$DIST_NAME &&

cd $PARENT/$DIST_NAME &&

git add . && git commit -m "update version" && git push origin $BRANCH

rm -rf $PARENT/$DIST_NAME

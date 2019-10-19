#!/bin/bash

PROJECT_NAME=supermirror.com.br-www
PROJECT_DIST_FOLDER=./dist
DIST_NAME=$PROJECT_NAME-dist
PARENT=..
DIST_PATH=../$PROJECT_NAME-dist
BRANCH=master

# PREPARE FOLDER
rm -rf $DIST_PATH && cd $PARENT/ && git clone https://github.com/mauricionobrega/$PROJECT_NAME.git $DIST_NAME && cd $DIST_NAME && git checkout $BRANCH &&

# BUILD PROJECT
cd $PARENT/$PROJECT_NAME && npm run build &&

cp -R $PROJECT_DIST_FOLDER/* $PARENT/$DIST_NAME &&

cd $PARENT/$DIST_NAME &&

git add . && git commit -m "update version" && git push origin $BRANCH

rm -rf $PARENT/$DIST_NAME

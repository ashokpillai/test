#!/bin/bash

set -vx

cd /dev
mkdir $TOPS_NUM
cd  $TOPS_NUM

 wget --no-check-certificate -r 'https://docs.google.com/uc?export=download&id='$URL'' -O test.zip

unzip   test.zip
mkdir revproui
unzip revproui.zip -d revproui
cd revproui   
.

#aws s3 cp . s3://release.revpro.cloud/master/$VERSION_NUM/ --recursive --acl public-read



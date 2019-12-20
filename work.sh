#!/bin/bash

set -vx

cd /dev
mkdir $folder
cd  $folder

 wget --no-check-certificate -r 'https://docs.google.com/uc?export=download&id='$url'' -O test.zip

unzip   test.zip
mkdir revproui
unzip revproui.zip -d revproui
cd revproui

#aws s3 cp . s3://release.revpro.cloud/master/$ver/ --recursive --acl public-read

if [[ $? -ne 0 ]]
then
echo "Script Ends with error "
else
echo "success"
fi


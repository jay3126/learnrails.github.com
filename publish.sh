#!/usr/bin/env bash

echo "publishing to the learnrails.github.com site"
cd ~/workspace/learnrails/learnrails.github.com.wiki
gollum-site generate
echo "GENERATED";
cp -R _site/* ../learnrails.github.com
rm -rf _site/
cd ../learnrails.github.com
mv Home.html index.html
echo "COMMITTING";
git add -A
git commit -am "update website"
git push origin master
echo "FINISHED";
exit 0

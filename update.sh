#!/bin/bash

cd ./pulp_soc
rm -rf .bender
rm Bender.lock
./bender update
git add .
git commit -m "update"
git push

cd ../pulpissimo
rm -rf ./bender
rm Bender.lock
./bender update
make scripts
git add .
git commit -m "update"
git push

cd ../pulp-runtime
git add .
git commit -m "update"
git push

cd ..
git add .
git commit -m "update"
git push

#!/usr/bin/env bash

EXPORT="extended-godot-fire"

echo -e "Checkout remotes"
git remote rm SaracenOne
git remote add SaracenOne https://github.com/SaracenOne/godot
git fetch SaracenOne

git remote rm lyuma
git remote add lyuma https://github.com/lyuma/godot
git fetch lyuma

git remote rm godotengine
git remote add godotengine https://github.com/godotengine/godot
git fetch godotengine

git remote rm $EXPORT
git remote add $EXPORT git@github.com:godot-extended-libraries/godot-fire.git
git fetch $EXPORT

git remote rm fire
git remote add fire git@github.com:fire/godot.git
git fetch fire

echo -e "Work"
git checkout master --force
git branch -D $EXPORT
git as -av
git checkout $EXPORT -f
#git push -u -f $EXPORT extended-fire
git checkout master -f

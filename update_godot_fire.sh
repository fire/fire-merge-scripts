#!/usr/bin/env bash

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

git remote rm extended-godot-fire
git remote add extended-godot-fire git@github.com:godot-extended-libraries/godot-fire.git
git fetch extended-godot-fire

git remote rm fire
git remote add fire git@github.com:fire/godot.git
git fetch fire

echo -e "Work"
git checkout master --force
git branch -D extended-godot-fire
git as -av
git checkout groups -f
#git push -u -f extended-godot-fire extended-fire
git checkout master -f

#!/usr/bin/env bash

set -e

git stash

echo -e "Checkout remotes"
git remote rm SaracenOne || true
git remote add SaracenOne https://github.com/SaracenOne/godot
git fetch SaracenOne
git remote rm lyuma || true
git remote add lyuma https://github.com/lyuma/godot
git fetch lyuma
git remote rm godotengine || true
git remote add godotengine https://github.com/godotengine/godot
git fetch godotengine
git remote rm "extended-fire-godot" || true
git remote add "extended-fire-godot" git@github.com:godot-extended-libraries/godot-fire.git
git fetch extended-fire-godot
git remote rm fire || true
git remote add fire git@github.com:fire/godot.git
git fetch fire
git remote rm RevoluPowered || true
git remote add RevoluPowered https://github.com/RevoluPowered/godot.git
git fetch RevoluPowered


echo -e "Work"
git checkout master --force
git branch -D "extended-fire" || true
./thirdparty/git-assembler -av
git checkout "extended-fire" -f
git push -u -f "extended-fire-godot" extended-fire
git checkout master -f

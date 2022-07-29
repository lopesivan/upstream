#!/usr/bin/env bash

# Lang=Docker
# Task=meuTeste
# ext=dockerfile
# arq=alg42

Lang=Ezored
#Task=linux
#Task=android
Task=windows
ext=md
arq=$Task
# if not exist path `$Lang' then create
_d=$Lang
test -d Lang/$_d || mkdir Lang/$_d

mkdir -p Task/$Task/$Lang
echo Task/$Task/$Lang >Task/$Task/$Lang/${arq}.${ext}
cd Lang/$Lang && ln -s ../../Task/$Task/$Lang $Task

ON=../cheat.sheets/sheets/_${Lang,,}/_info.yaml

test ! -e $ON || echo é necessãrio criar $ON


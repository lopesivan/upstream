#!/usr/bin/env bash

Lang=Docker
Task=meuTeste
ext=dockerfile
arq=alg42
# if not exist path `$Lang' then create
_d=$Lang
test -d Lang/$_d || mkdir Lang/$_d

mkdir -p Task/$Task/$Lang
echo Task/$Task/$Lang >Task/$Task/$Lang/${arq}.${ext}
cd Lang/$Lang && ln -s ../../Task/$Task/$Lang $Task

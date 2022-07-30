# Task/linux/Ezored

```
cheat -txt docker/ezored.mk > Makefile
make get-image load linux-host
```

Em host:

make clone
make patch

Em ezored:

> make get-yaml
> config.yml  <-- edit:
> make save

Em host:

make config
make prepare
make build
> ezored/run.sh <-- edit
make run


## desabilitando as bibliotecas:

find files/modules/ -name module.cmake -exec sed '8,17s/^/#/' -i {} \+

python make.py target linux_app build --dry-run


> python make.py conan setup

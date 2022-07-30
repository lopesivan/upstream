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

# Build programa sem dependência


1) Passo 1

No arquivo `CMakeLists.txt` que se encontra em
**files/targets/linux/cmake/CMakeLists.txt**, sunstituimos
a variável ${PROJECT_SOURCE_FILES_MERGED} pelo
path com nosso código fonte ou uma outra variável
**projects/others/ezored/src/main.cpp**.

- Antes
> add_executable(${PROJECT_CONFIG_NAME} ${PROJECT_SOURCE_FILES_MERGED})

- Depois
> add_executable(${PROJECT_CONFIG_NAME} "/home/ivan/ezored/projects/others/ezored/src/main.cpp")

2) Passo 2
Apagamos todo o método `requirements` que se encontra em
**files/targets/linux/conan/recipe/conanfile.py**.

Trecho removido:
```python

    def requirements(self):
        self.requires("sqlite3/3.38.5")
        self.requires("rapidjson/1.1.0")
        self.requires("poco/1.11.3")
        self.requires("openssl/1.1.1o")
        self.requires("sqlitecpp/3.1.1")
        self.requires("date/3.0.1")
        self.requires("nlohmann_json/3.9.1")
```
```bash
$ git clone https://github.com/catchorg/Catch2.git
$ cd Catch2
$ cmake -Bbuild -H. -DBUILD_TESTING=OFF
$ sudo cmake --build build/ --target install
```


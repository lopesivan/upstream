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
## Instalando no ubuntu
```bash
$ git clone https://github.com/catchorg/Catch2.git
$ cd Catch2
$ cmake -Bbuild -H. -DBUILD_TESTING=OFF
$ sudo cmake --build build/ --target install
```

## usando o projeto

1.) Adiciono ao meu *files/targets/linux/cmake/CMakeLists.txt* a
linha abaixo:

```
set(CMAKE_VERBOSE_MAKEFILE ON)
```

2.) Altero *files/targets/linux/conan/recipe/conanfile.py*:
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
 para:
```python
    def requirements(self):
        # self.requires("sqlite3/3.38.5")
        # self.requires("rapidjson/1.1.0")
        # self.requires("poco/1.11.3")
        # self.requires("openssl/1.1.1o")
        # self.requires("sqlitecpp/3.1.1")
        # self.requires("date/3.0.1")
        # self.requires("nlohmann_json/3.9.1")
        self.requires("catch2/3.1.0")
```

3.) Removo os módulos:

```
cd files/modules/
ls | grep -v linux| xargs rm -rf
```


```cpp
// 010-TestCase.cpp
// And write tests in the same file:
#include <catch2/catch_test_macros.hpp>

static int Factorial( int number ) {
   return number <= 1 ? number : Factorial( number - 1 ) * number;  // fail
// return number <= 1 ? 1      : Factorial( number - 1 ) * number;  // pass
}

TEST_CASE( "Factorial of 0 is 1 (fail)", "[single-file]" ) {
    REQUIRE( Factorial(0) == 1 );
}

TEST_CASE( "Factorials of 1 and higher are computed (pass)", "[single-file]" ) {
    REQUIRE( Factorial(1) == 1 );
    REQUIRE( Factorial(2) == 2 );
    REQUIRE( Factorial(3) == 6 );
    REQUIRE( Factorial(10) == 3628800 );
}

// Compile & run:
// - g++ -std=c++14 -Wall -I$(CATCH_SINGLE_INCLUDE) -o 010-TestCase 010-TestCase.cpp && 010-TestCase --success
// - cl -EHsc -I%CATCH_SINGLE_INCLUDE% 010-TestCase.cpp && 010-TestCase --success

// Expected compact output (all assertions):
//
// prompt> 010-TestCase --reporter compact --success
// 010-TestCase.cpp:14: failed: Factorial(0) == 1 for: 0 == 1
// 010-TestCase.cpp:18: passed: Factorial(1) == 1 for: 1 == 1
// 010-TestCase.cpp:19: passed: Factorial(2) == 2 for: 2 == 2
// 010-TestCase.cpp:20: passed: Factorial(3) == 6 for: 6 == 6
// 010-TestCase.cpp:21: passed: Factorial(10) == 3628800 for: 3628800 (0x375f00) == 3628800 (0x375f00)
// Failed 1 test case, failed 1 assertion.
```


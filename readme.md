# Project Eular using Haskell

This project aims at solving [project eular](https://projecteuler.net/) problems using Haskell. The project is built using [cabal](https://www.haskell.org/cabal/#install-upgrade), so make sure you have cabal installed before using this. Lets dive into the installation process (I am assumiung you have already installed cabal)

## Installation
The process is pretty simple, you need to follow the following steps to get started:
### Steps:
1. Clone the repo using the following command:
``` bash
git clone git@github.com:paritosh-08/projectEular.git
```
2. Run the tests using the following command and hope that everything works 😜:
``` bash
cabal new-test
```
3. Install using the following command:
``` bash
cabal update
cabal install
```
## Run the program
Run the following command to run the program:
``` bash
cabal new-run :projectEular
```
You should get some output after running the above command.
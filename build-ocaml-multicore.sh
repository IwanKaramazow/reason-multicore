#!/bin/bash

git clone https://github.com/ocamllabs/ocaml-multicore
cd ocaml-multicore
./configure -prefix $HOME
make world
make opt
make opt.opt
bash -c 'umask 022 && make install'
make clean
echo 'export PATH=$PATH:$HOME/bin' >> ~/.profile


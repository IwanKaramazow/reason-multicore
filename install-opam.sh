#!/bin/bash

wget https://raw.github.com/ocaml/opam/master/shell/opam_installer.sh -O - | sh -s /usr/local/bin

opam init --comp=4.02.3

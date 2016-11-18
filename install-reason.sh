#!/bin/bash

eval `opam config env`
opam update
git clone https://github.com/facebook/reason.git
cd reason
opam pin add -y reason .

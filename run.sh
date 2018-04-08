#!/usr/bin/env bash

# Compiling with ghcjs:
stack build --stack-yaml=stack.yaml

# Moving the generated files to the js folder:
mkdir -p js
cp -r $(stack path --local-install-root --stack-yaml=stack.yaml)/bin/reflex-starter.jsexe/* js/
http-server ./js -a 0.0.0.0 -p 8080 -o

#!/bin/bash

sencha \
	-sdk /sdk/ext-6.0.0-preview \
    compile \
        -classpath=./src \
        -options=debug:false \
        union -r -c MyApp.MyClass \
        and concat ./build/minimal.js \
        and concat -yui ./build/minimal.min.js \
        and meta -f -out ./build/minimal.filenames.js

ls -lh build
#!/bin/bash

: ${EXT_SDK_DIR:?"Run first: export EXT_SDK_DIR=/path/to/sdk"}

sencha \
	-sdk $EXT_SDK_DIR \
    compile \
        -classpath=./src \
        -options=debug:false \
        union -r -c MyApp.MyClass \
        and concat ./build/minimal.js \
        and concat -yui ./build/minimal.min.js \
        and meta -f -out ./build/minimal.filenames.js

ls -lh build
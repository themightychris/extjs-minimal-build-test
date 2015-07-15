#!/bin/bash

: ${EXT_SDK_DIR:?"Run first: export EXT_SDK_DIR=/path/to/sdk"}

sencha \
	-sdk $EXT_SDK_DIR \
    compile \
        -classpath=./src,$EXT_SDK_DIR/packages/core/src,$EXT_SDK_DIR/packages/core/overrides \
        -options=debug:false \
        union -r -c Ext.ClassManager \
        and concat ./build/minimal.js \
        and concat -yui ./build/minimal.min.js \
        and meta -f -out ./build/minimal.filenames.js

ls -lh build
#!/bin/bash

find `pwd` -name '*.erl' > cscope.files
find `pwd` -name '*.hrl' >> cscope.files
erlcscope `pwd`

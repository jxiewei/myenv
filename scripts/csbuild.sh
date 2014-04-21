#!/bin/bash

find `pwd` -name '*.[hc]' > cscope.files
find `pwd` -name '*.cpp' >> cscope.files
find `pwd` -name '*.cxx' >> cscope.files
find `pwd` -name '*.cc' >> cscope.files
find `pwd` -name '*.java' >> cscope.files
cscope -b -q -k

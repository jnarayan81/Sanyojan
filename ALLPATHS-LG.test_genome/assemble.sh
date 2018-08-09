#!/bin/sh

# ALLPATHS-LG needs 100 MB of stack space.  In 'csh' run 'limit stacksize 100000'.
ulimit -s 100000

RunAllPathsLG \
 PRE=$PWD\
 REFERENCE_NAME=test.genome\
 DATA_SUBDIR=data\
 RUN=run\
 SUBDIR=test\
 TARGETS=standard\
 OVERWRITE=True\
 | tee -a assemble.out


#!/bin/bash

# show bash version
bash --version

v="ho ge"; echo ${v^^}

echo $CIRCLE_BRANCH
var_upper="BRANCH_${CIRCLE_BRANCH^^}"
echo $var_upper

echo ${!var_upper}


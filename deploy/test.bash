#!/bin/bash

# show bash version
bash --version

v="ho ge"; echo ${v^^}

var_lower="master"
echo $var_lower

var_upper="BRANCH_${CIRCLE_BRANCH^^}"
echo $var_upper


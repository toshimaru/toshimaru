#!/bin/bash

bash --version

echo $CIRCLE_BRANCH
var_upper="BRANCH_${CIRCLE_BRANCH^^}"
echo $var_upper
dynamic_var=${!var_upper}

echo $dynamic_var

#!/bin/bash

rword=$1

[[ -z $rword ]] && \
       echo "Usage: It is required to Enter the string as an argument" && exit 1
random=$rword$RANDOM

echo	$random
exit 0


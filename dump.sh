#!/bin/bash

if [ $# -ne 2 ]; then
	echo "need 2 arguments"
	exit 1
fi

od -tx1 $1 -An -v | perl -nle 'foreach $line (split(" ")) { print ".byte 0x".$line; }' > $2

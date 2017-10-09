#!/bin/bash

od -tx1 $1 -An -v | perl -nle 'foreach $line (split(" ")) { print ".byte 0x".$line; }' > $2

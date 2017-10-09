#!/bin/bash

od -tx1 hello -An -v | perl -nle 'foreach $line (split(" ")) { print ".byte 0x".$line; }' > dump.s

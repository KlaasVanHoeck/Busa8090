#!/bin/bash
var=$(ls $* -t | head -n1)
echo "$var"

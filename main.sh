#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "Execute com sudo"
   exit 1
fi



echo "////////////////////////////////////"
echo "// Distro: "
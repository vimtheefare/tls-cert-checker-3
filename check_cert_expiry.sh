#!/bin/bash

if [ ! -f domains.txt ]; then
  echo "domains.txt file not found!"
  exit 1
fi

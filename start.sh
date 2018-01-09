#!/bin/bash

ncat --keep-open -l localhost 8080 -e `pwd`/server.sh;

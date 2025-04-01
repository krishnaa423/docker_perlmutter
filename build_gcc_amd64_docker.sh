#!/bin/bash

docker buildx build -f ./Containerfile_gcc_amd64 --platform=linux/amd64 -t krishnaa42342/fp:gcc-amd64-perlmutter  . 
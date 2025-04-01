#!/bin/bash

podman-hpc image build -f ./Containerfile_gcc_amd64 -t krishnaa42342/fp:gcc-amd64-perlmutter .  
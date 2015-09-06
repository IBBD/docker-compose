#!/bin/bash

docker run -d -p 5000:5000 -v /data/docker-registry:/tmp/registry daocloud.io/library/registry


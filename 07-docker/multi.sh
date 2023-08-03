#!/bin/bash
docker build . -t word-cloud-generator-image -f Dockerfile.multi
docker run -p 8888:8888 -d --rm word-cloud-generator-image
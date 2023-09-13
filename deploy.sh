#!/bin/bash

cd $1

docker run --rm -it --privileged --network host \
     -v /var/run/docker.sock:/var/run/docker.sock \
     -v /var/run/netns:/var/run/netns \
     -v /etc/hosts:/etc/hosts \
     -v /var/lib/docker/containers:/var/lib/docker/containers \
     --pid="host" \
     -v $(pwd):$(pwd) \
     -w $(pwd) \
     ghcr.io/srl-labs/clab:0.38.0 clab deploy

cd ..

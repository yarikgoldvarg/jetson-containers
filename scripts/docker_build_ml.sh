#!/usr/bin/env bash

set -e

BASE_IMAGE="nvcr.io/nvidia/l4t-base:r32.4.3"

#
# Machine Learning + jetson-inference
#
sh ./scripts/docker_build.sh jetson-inference:latest Dockerfile.ml \
		--build-arg BASE_IMAGE=$BASE_IMAGE \
		--build-arg PYTORCH_IMAGE=l4t-pytorch:r32.4.3-pth1.6-py3 \
		--build-arg TENSORFLOW_IMAGE=l4t-tensorflow:r32.4.3-tf1.15-py3

#!/bin/bash
docker rmi dnas-test
docker build --rm --tag dnas-test .

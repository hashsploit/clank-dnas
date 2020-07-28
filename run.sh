#!/bin/bash
docker run --rm -i -t -p 443:443 -p 53:53/udp -p 53:53/tcp dnas-test

#!/bin/bash

container=$(docker ps -a | grep altdns |  head -n 1 | awk '{ print $12 }')
docker logs $container

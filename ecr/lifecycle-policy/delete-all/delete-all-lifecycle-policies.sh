#!/bin/bash

aws ecr describe-repositories | grep repositoryName | awk {'print $2'} | tr --delete '",' | xargs -n1 ./wrap.sh

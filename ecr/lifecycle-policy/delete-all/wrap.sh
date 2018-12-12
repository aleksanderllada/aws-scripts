#!/bin/bash

aws ecr delete-lifecycle-policy --repository-name "$@" || exit 0

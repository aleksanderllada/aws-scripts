#!/bin/bash

TAG="${TAG:-any}"
DAYS="${DAYS:-10}"

case "$TAG" in
"tagged"|"untagged"|"any") true
    ;;
*)
    echo "TAG must be tagged, untagged or any"
    exit 1
    ;;
esac

cp lifecycle-policy.json.sed lifecycle-policy.json
sed -i -e s/TAG/${TAG}/g lifecycle-policy.json
sed -i -e s/DAYS/${DAYS}/g lifecycle-policy.json

aws ecr describe-repositories | grep repositoryName | awk {'print $2'} | tr --delete '",' | xargs -n1 aws ecr put-lifecycle-policy --lifecycle-policy-text "file://lifecycle-policy.json" --repository-name

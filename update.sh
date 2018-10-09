#!/bin/bash
helm package ~/rafal/Hazelcast/repos/ibm-charts/community/hazelcast-enterprise
helm repo index --url https://leszko.github.io/hazelcast-charts/ .
git add .
git commit -m "New version of hazelcast-enterprise" --no-edit
git push origin gh-pages -f

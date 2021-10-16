#!/bin/bash

# nfs-server-k8s build and publish script
docker build -t docker.io/adnanhodzic/nfs-server-k8s:$(cat VERSION) .
docker tag docker.io/adnanhodzic/nfs-server-k8s:$(cat VERSION) docker.io/adnanhodzic/nfs-server-k8s:latest
docker push docker.io/adnanhodzic/nfs-server-k8s:$(cat VERSION)
docker push docker.io/adnanhodzic/nfs-server-k8s:latest

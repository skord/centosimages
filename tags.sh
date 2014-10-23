#!/bin/bash
docker tag skord/baseimage6:latest skord/baseimage6:$VERSION
docker tag skord/baseimage7:latest skord/baseimage7:$VERSION
docker tag skord/openjdk7:latest skord/baseimage:$VERSION
docker push skord/baseimage6
docker push skord/baseimage7
docker push skord/openjdk7

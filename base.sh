#!/bin/bash
cd baseimage/7
docker build -t skord/baseimage7 .
cd ../6
docker build -t skord/baseimage6 .

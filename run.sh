#!/usr/bin/bash

./build.sh

docker-compose pull && docker-compose up -d

./target/release/melee_server
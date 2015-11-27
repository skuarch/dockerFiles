#!/bin/bash

echo -n "Build Docker images for Ozark ... "
docker build --no-cache -t ozark ozark
echo "DONE."

echo -n "Running Ozark image ... "
docker run -t -i -p 4848:4848 -p 8080:8080 -p 8181:8181 ozark

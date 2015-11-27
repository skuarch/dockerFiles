
Running Ozark Samples in Docker Container
-----------------------------------------

1) Setup Docker from docker.com. If running on a Mac, you'd need to install boot2docker.

2) Execute script ozark-in-docker.sh on a terminal with access to the docker command. 
   This script will download all the bits, create the Docker image and start a container
   with it.

3) If running boot2docker, find IP by running "boot2docker ip"

4) Open browser window at http://<container-ip>:8080/samples

5) Use http://<container-ip>:4848/ to log into GF console using admin/ozark.


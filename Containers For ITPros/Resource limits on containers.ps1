#This is a reference documentation from this blog post: https://techcommunity.microsoft.com/t5/Containers/Containers-for-ITPros-Resource-limits-on-containers/ba-p/927650

#Setting CPU limits
#The simplest way to limit the CPU of a container is by specifying the --cpus parameter on docker run:
docker run -d --cpus=1 --name testcontainer mcr.microsoft.com/windows/servercore:ltsc2019
#Another option is to set half, or another percentage of a CPU:
docker run -d --cpus=1.5 --name testcontainer mcr.microsoft.com/windows/servercore:ltsc2019

#Setting memory limits
#To set memory limits, the simplest way is to specify the -m or --memory parameter on docker run:
docker run -d -m 2048 --name testcontainer mcr.microsoft.com/windows/servercore:ltsc2019

#Checking your configuration on running containers
#To check the container configuration use the command docker inspect:
docker inspect testcontainer
#Luckily, there's an option to extract only the information you want:
docker inspect --format='{{.HostConfig.Memory}}' testcontainer
docker inspect --format='{{.HostConfig.NanoCpus}}' testcontainer
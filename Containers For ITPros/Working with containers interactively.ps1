#This is a reference documentation from this blog post: https://techcommunity.microsoft.com/t5/Containers/Containers-for-ITPros-Working-with-containers-interactively/ba-p/909710

#The simplest way to open an interactive session is when you run a container for the first time with docker run:
docker run --entrypoint powershell -it --name testcontainer mcr.microsoft.com/windows/servercore:ltsc2019

#If the container is already created, you can use:
docker start --interactive testcontainer

#Yet another option is when you have a container already running and you want to execute a command inside that container. For that, you can use docker exec:
docker exec testcontainer powershell dir

#Another variant of docker exec is:
docker exec --interactive testcontainer powershell


#Don't fall into the --entrypoint trap!

#When browsing the web for examples, you'll see something like this:
#docker run -it --name testcontainer mcr.microsoft.com/windows/servercore:ltsc2019 powershell

#To avoid issues with --entrypoint, use:
docker run --entrypoint powershell -it --name testiiscontainer mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2019
#Note the --entrypoint after the run command
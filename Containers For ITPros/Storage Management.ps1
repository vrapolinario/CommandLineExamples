#Run container with mounted volume
docker run -d --name testcontainer -p 8081:80 -v C:\Test:C:\ContainerTest mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2019
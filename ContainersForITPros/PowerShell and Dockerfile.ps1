#This is a reference documentation from this blog post: https://techcommunity.microsoft.com/t5/Containers/Containers-for-ITPros-PowerShell-and-Dockerfile/ba-p/890145

#Create a new container based on the Server Core container image (Current LTSC image is Windows Server 2019)
docker run --entrypoint powershell -it --name testcontainer mcr.microsoft.com/windows/servercore:ltsc2019

#Escaping double quotes

#When using PowerShell on a Dockerfile do not use double quotes for values, such as:
#New-WebApplication "TestWebApp" -Site "Default Web Site" -ApplicationPool "DefaultAppPool" -PhysicalPath "C:\TestWebApp"

#Instead, use single quotes:
New-WebApplication "TestWebApp" -Site 'Default Web Site' -ApplicationPool "DefaultAppPool" -PhysicalPath "C:\TestWebApp"
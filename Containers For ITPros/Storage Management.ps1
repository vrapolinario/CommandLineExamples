#Run container with mounted volume
docker run -d --name testcontainer -p 8081:80 -v C:\Test:C:\ContainerTest mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2019

#Run container with SMB mount
$creds = Get-Credential
New-SmbGlobalMapping -RemotePath \\contosofileserver\share1 -Credential $creds -LocalPath G:
docker run -d --name testcontainer -p 8081:80 -v G:\ContainerData:C:\ContainerTest mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2019
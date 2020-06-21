[System.Environment]::OSVersion.Version
(Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ReleaseId
Get-WmiObject -Class Win32_OperatingSystem | ForEach-Object -MemberName Caption
#systeminfo /fo csv | ConvertFrom-Csv | select OS*, System*, Hotfix* | Format-List
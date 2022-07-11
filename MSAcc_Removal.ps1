#Requires -Version 3.0
# ------------------------------------------------------------------------------------------------------------------------------------------------
# This script will remove MS account linking from local profile and prevert the computer able to login and link up with MS account again
# ------------------------------------------------------------------------------------------------------------------------------------------------
Remove-Item -Path "HKU:\.DEFAULT\Software\Microsoft\IdentityCRL\StoredIdentities" -Recurse
Add-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "NoConnectedUser" -Value "3" -PropertyType "DWord"

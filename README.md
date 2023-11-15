# Update User UPNs in Active Directory

## Synopsis
This PowerShell script updates the User Principal Name (UPN) of users in a specified Organizational Unit (OU) to match their primary email addresses. It supports recursive searches within sub-OUs and logs the process.

## Description
The script requires an OU path as input. It can perform a recursive search and log its output. Each user's UPN in the OU is set to their primary email address if available.

## Parameters
- `ou`: Distinguished name (DN) of the OU to process.
- `recursive`: Optional switch for recursive processing of sub-OUs.
- `logfile`: Path for the log file.

## Usage Example
```powershell
.\UpdateUserUPN.ps1 -ou "OU=YourOU,DC=YourDomain,DC=com" -recursive -logfile "C:\logs\upn_update.log"
```

## Requirements
- PowerShell
- ActiveDirectory module

<#
.SYNOPSIS
This script updates the User Principal Name (UPN) of users in a specified Organizational Unit (OU) to match their primary email addresses. It supports an optional recursive search within sub-OUs and logs the process to a specified file.

.DESCRIPTION
The script takes an OU path as input, performs an optional recursive search, and logs the output. For each user in the OU, it sets the UPN to the user's primary email address if it exists.

.PARAMETER ou
The distinguished name (DN) of the Organizational Unit (OU) to process.

.PARAMETER recursive
An optional switch to enable recursive processing of sub-OUs.

.PARAMETER logfile
The path to the log file where the script output will be stored.

.EXAMPLE
.\UpdateUserUPN.ps1 -ou "OU=YourOU,DC=YourDomain,DC=com" -recursive -logfile "C:\logs\upn_update.log"
This command updates the UPN for all users in the specified OUs and logs the output to "C:\logs\upn_update.log".
#>

param(
    [Parameter(Mandatory = $true)]
    [string]$ou,

    [Parameter(Mandatory = $false)]
    [switch]$recursive,

    [Parameter(Mandatory = $false)]
    [string]$logfile
)

Import-Module ActiveDirectory

# Function to update the UPN of a user
function Update-UPN {
    # Function parameters and content remain the same
}

# Set search options
$searchBase = $ou
$searchScope = 'OneLevel'
if ($recursive) {
    $searchScope = 'Subtree'
}

# Retrieve users and update UPN
# The rest of the script remains the same

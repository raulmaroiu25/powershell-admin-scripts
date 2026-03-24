param(
    [Parameter(Mandatory=$true)]
    [string]$username
)

Get-ADUser -Identity $username -Properties MemberOf |
Select-Object SamAccountName, MemberOf

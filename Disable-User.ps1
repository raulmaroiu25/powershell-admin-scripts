param(
    [string]$username
)

Disable-ADAccount -Identity $username
Move-ADObject -Identity (Get-ADUser $username).DistinguishedName -TargetPath "OU=DisabledUsers,DC=company,DC=local"

Write-Host "User $username disabled and moved to DisabledUsers OU."

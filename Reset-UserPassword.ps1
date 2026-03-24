param(
    [Parameter(Mandatory=$true)]
    [string]$username
)

$NewPassword = "TempPass123!"

Set-ADAccountPassword -Identity $username -Reset -NewPassword (ConvertTo-SecureString $NewPassword -AsPlainText -Force)
Set-ADUser -Identity $username -ChangePasswordAtLogon $true

Write-Host "Password reset for $username. Temporary password: $NewPassword"

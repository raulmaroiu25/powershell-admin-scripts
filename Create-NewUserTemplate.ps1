param(
    [string]$FirstName,
    [string]$LastName,
    [string]$Department
)

$Sam = "$FirstName.$LastName"
$Display = "$FirstName $LastName"

New-ADUser -Name $Display `
           -SamAccountName $Sam `
           -GivenName $FirstName `
           -Surname $LastName `
           -Department $Department `
           -Enabled $true

Write-Host "User $Display created."

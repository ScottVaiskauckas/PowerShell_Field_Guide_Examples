Function HelloUser
{
    param(
        $FirstName,
        $LastName
    )
    Write-Host "Hello $FirstName $LastName!"
}

HelloUser -FirstName "John" -LastName "Doe"
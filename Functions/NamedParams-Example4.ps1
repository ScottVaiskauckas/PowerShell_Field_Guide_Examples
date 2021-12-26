param(
    [parameter(Mandatory=$True)] $FirstName,
    [parameter(Mandatory=$True)] $LastName
)

Write-Host "Hi my name is $FirstName $LastName and these are mandatory."
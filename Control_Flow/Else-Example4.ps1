$String1 = "Spam"
$String2 = $Null

if($String1)
{
    Write-Host "The condition is not a null value"
} Else
{
   Write-Host "The condition is Null"
}

if($String2)
{
    Write-Host "The condition is not a null value"
} Else
{
   Write-Host "The condition is Null"
}
$Condition1 = $False
$Condition2 = $True

If($Condition1)
{
    Write-Host "Condition 1 is true"
} else 
{
    if ($Condition2)
    {
        Write-Host "Condition 2 is true"
    } else 
    {
        Write-Host "None of the conditions are true"
    }
}
$Condition1 = $False
$Condition2 = $False
$Condition3 = $False
$Condition4 = $True

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
        if ($Condition3)
        {
            Write-Host "Condition 3 is true"
        } else 
        {
            if ($Condition4)
            {
                Write-Host "Condition 4 is true"
            } else 
            {
                Write-Host "None of the conditions are true"
            }
        }
    }
}
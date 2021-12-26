$Condition1 = $False
$Condition2 = $True


If($Condition1)
{
    Write-Host "Condition 1 is true"
} ElseIf ($Condition2)
{
    Write-Host "Condition 2 is true"
} Else 
{
    Write-Host "None of the conditions are true"
}
$Condition1 = $False
$Condition2 = $False
$Condition3 = $False
$Condition4 = $True


If($Condition1)
{
    Write-Host "Condition 1 is true"
} ElseIf ($Condition2)
{
    Write-Host "Condition 2 is true"
} ElseIf ($Condition3)
{
    Write-Host "Condition 3 is true"
} ElseIf ($Condition4)
{
    Write-Host "Condition 4 is true"
} Else 
{
    Write-Host "None of the conditions are true"
}
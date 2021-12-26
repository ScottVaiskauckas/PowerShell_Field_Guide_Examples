$WeenArray = @("Pork roll", "Eggs", "Cheese", "Kaiser bun")

For($i=0;$i -LT $WeenArray.count; $i++)
{
    Write-Host "Element $i is: " $WeenArray[$i]
}
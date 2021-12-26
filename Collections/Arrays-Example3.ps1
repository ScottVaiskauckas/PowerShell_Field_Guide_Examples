$DinnerArray = [object[]]::new(3)
$DinnerArray[0] = "Tempeh"
$DinnerArray[1] = "Goat cheese"
$DinnerArray[2] = "Baby Spinach"
$DinnerArray.getType()

Write-Host ""
Write-Host "Element 0 is: " $DinnerArray[0] 
Write-Host "Element 1 is: " $DinnerArray[1]
Write-Host "Element 2 is: " $DinnerArray[2]
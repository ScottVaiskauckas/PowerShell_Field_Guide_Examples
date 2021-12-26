$DinnerArray = [object[,]]::new(2,2)
$DinnerArray[0,0] = "Tempeh"
$DinnerArray[0,1] = "Goat cheese"
$DinnerArray[1,0] = "Baby Spinach"
$DinnerArray[1,1] = "Cherry Tomatoes"
$DinnerArray.getType()

Write-Host ""
Write-Host "Element 0,0 is: " $DinnerArray[0,0]
Write-Host "Element 0,1 is: " $DinnerArray[0,1]
Write-Host "Element 1,0 is: " $DinnerArray[1,0]
Write-Host "Element 1,0 is: " $DinnerArray[1,1]
Write-Host "The entire multidimensional array: " $DinnerArray
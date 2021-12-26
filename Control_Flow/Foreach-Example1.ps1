$ATXBirdArray = @("bluejays", "cardinals", "mocking birds", "monk parakeets")

Foreach($Bird in $ATXBirdArray)
{
    Write-Host "You can find $Bird in Austin, Texas!"
}
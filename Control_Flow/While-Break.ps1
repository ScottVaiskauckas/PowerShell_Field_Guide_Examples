$RunCount = 1

While($RunCount -LE 3)
{
    Write-Host "The while loop has run $RunCount times"
    $RunCount++
    
    if($RunCount -EQ 2)
    {
        Write-Host "We're breaking out of the loop"
        Break;
    }
}
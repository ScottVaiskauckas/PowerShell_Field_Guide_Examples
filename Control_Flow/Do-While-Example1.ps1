$RunCount = 1

Do {
    Write-Host "The do-while loop has run $RunCount times"
    $RunCount++
} While ($Runcount -LE 3)
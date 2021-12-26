$RunCount = 1

Do {
    Write-Host "The do-until loop has run $RunCount times"
    $RunCount++
} Until ($Runcount -GT 3)
$String = "string"

Switch($String)
{
    "not a match"
    {
        Write-Host "Case 1"
        break
    }
    "string"
    {
        Write-Host "Case 2"
    }
    "string"
    {
        Write-Host "Case 3"
        break
    }
    default
    {
        Write-Host "Default case"
    }
}
$String = "string2"

Switch($String)
{
    "string1"
    {
        Write-Host "Case 1"
        break
    }
    "string2"
    {
        Write-Host "Case 2"
        break
    }
    "string3"
    {
        Write-Host "Case 3"
        break
    }
    "default"
    {
        "Default case"
    }
}
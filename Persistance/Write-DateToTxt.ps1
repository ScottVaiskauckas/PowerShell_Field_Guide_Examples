Function Write-DateToTxt
{
    [CmdletBinding()]
    param(
        $Path = "$env:userprofile\Documents\Date",
        $TxtFile = "Get-Date.txt"
    )

    # Error handling in case the target directory does not exist
    If(-not (Test-Path $Path))
    {
        New-Item -ItemType Directory -Path "$Path"
    }
    
    # Writes the date to a txt file
    Get-Date |
    Out-File -FilePath "$Path\$TxtFile"
}

Write-DateToTxt
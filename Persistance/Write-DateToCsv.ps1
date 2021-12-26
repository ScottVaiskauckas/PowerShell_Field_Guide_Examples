Function Write-DateToCsv
{
    [CmdletBinding()]
    param(
        $Path = "$env:userprofile\Documents\Date",
        $CsvFile = "Get-Date.csv"
    )

    # Error handling in case the target directory does not exist
    If(-not (Test-Path $Path))
    {
        New-Item -ItemType Directory -Path "$Path"
    }
    
    # Stores date object in a Csv file
    Get-Date |
    Export-Csv "$Path\$CsvFile"
}

Write-DateToCsv
Function Export-AdminsToCsv
{
    [CmdletBinding()]
    param(
        $Path = "$env:userprofile\Documents\Admins",
        $CsvFile = "$env:ComputerName.csv"
    )

    # Error handling in case the target directory does not exist
    If(-not (Test-Path $Path))
    {
        New-Item -ItemType Directory -Path "$Path"
    }
    
    # Get members of administrators group and add the computername as a property.
    # Then export to csv.
    Get-LocalGroupMember -Group "Administrators" |
    Select-Object -Property @{name='ComputerName';
                            expression={$env:ComputerName}},* |
    Export-Csv "$Path\$CsvFile"
}

Export-AdminsToCsv
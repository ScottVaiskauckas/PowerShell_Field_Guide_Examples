Function Export-AdminsToTxt
{
    [CmdletBinding()]
    param(
        $Path = "$env:userprofile\Documents\Admins",
        $TxtFile = "$env:ComputerName.txt"
    )

    # Error handling in case the target directory does not exist
    If(-not (Test-Path $Path))
    {
        New-Item -ItemType Directory -Path "$Path"
    }
    
    # Get members of administrators group and add the computername as a property.
    # Then export to txt.
    Get-LocalGroupMember -Group "Administrators" |
    Select-Object -Property @{name='ComputerName';
                            expression={$env:ComputerName}},* |
    Out-File -FilePath "$Path\$TxtFile"
}

Export-AdminsToTxt
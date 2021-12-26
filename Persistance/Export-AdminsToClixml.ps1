Function Export-AdminsToClixml
{
    [CmdletBinding()]
    param(
        $Path = "$env:userprofile\Documents\Admins",
        $XmlFile = "$env:ComputerName.xml"
    )

    # Error handling in case the target directory does not exist
    If(-not (Test-Path $Path))
    {
        New-Item -ItemType Directory -Path "$Path"
    }
    
    # Get members of administrators group and add the computername as a property.
    # Then export to xml.
    Get-LocalGroupMember -Group "Administrators" |
    Select-Object -Property @{name='ComputerName';expression={$env:ComputerName}},* |
    Export-Clixml "$Path\$XmlFile"
}

Export-AdminsToClixml
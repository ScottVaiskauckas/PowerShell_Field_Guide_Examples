Function Write-DateToClixml
{
    [CmdletBinding()]
    param(
        $Path = "$env:userprofile\Documents\Date",
        $XmlFile = "Get-Date.xml"
    )

    # Error handling in case the target directory does not exist
    If(-not (Test-Path $Path))
    {
        New-Item -ItemType Directory -Path "$Path"
    }
    
    # Stores date object in an xml file
    Get-Date |
    Export-Clixml "$Path\$XmlFile"
}

Write-DateToClixml
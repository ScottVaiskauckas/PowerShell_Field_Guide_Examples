# This is the folder you want to get the files from.
$ParentDirectory = $args[0]

# Print files of this type.
$FileExt = $args[1]

# Test to see if positional parameters were provided
# If $ParentDirectory not provided, prompt for user input.
# In some cases, it is okay to leave this blank
If(-not $ParentDirectory)
{
    Write-Host "Please enter the path to the parent directory: " `
    -NoNewline -ForegroundColor Yellow
    $ParentDirectory = Read-Host
}

# While $FileExt not provided, prompt for user input.
# This will need to be present in all cases.
While(-not $FileExt)
{
    Write-Host "Please enter the file extension. " -ForegroundColor Yellow
    Write-Host "Please note not all types are supported. " `
    -NoNewline -ForegroundColor Red
    Write-Host "Wildcards (*) are supported: " `
    -NoNewline -ForegroundColor Red
    $FileExt = Read-Host 

}

# This gets the file names from the parent directory
# Pipes that into Where-Object which only selects files with the pdf extension
# Then pipes that into Sort-Object which sorts the names in ascending order
$Files = Get-ChildItem $ParentDirectory | 
Where-Object -Property Name -Like *.$FileExt | 
Sort-Object

# Iterates over the items in the $Files array
Foreach($File in $Files)
{
    $FileName = $File.name
    # Should print the file using your default printer, but you might need to pipe this into kill.
    # I can help with that. See here: https://gregcaporale.wordpress.com/2012/01/18/powershell-to-print-files-automatically/
    Start-Process "$ParentDirectory\$FileName" -verb print
}
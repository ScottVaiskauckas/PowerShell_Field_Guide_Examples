# This is the folder you want to get the files from.
$ParentDirectory = Read-Host -prompt `
"Please enter the path to the parent directory"

# Print files of this type.
$FileExt = Read-Host -prompt `
"Please enter the file extension. Please note not all types are supported"

# This gets the file names from the parent directory
# Pipes that into Where-Object which only selects files with the chosen extension
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
    # Start-Process "$ParentDirectory\$FileName" -verb print
    $FileName
}
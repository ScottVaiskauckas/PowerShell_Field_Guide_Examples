# This is the folder you want to get the files from. You'll need to change this.
# This is pointing to a folder named PDF in the signed in user's documents.
$ParentDirectory = "$env:userprofile\Documents\PDF"

# This gets the file names from the parent directory
# Pipes that into Where-Object which only selects files with the pdf extension
# Then pipes that into Sort-Object which sorts the names in ascending order
$Files = Get-ChildItem $ParentDirectory | 
Where-Object -Property Name -Like *.pdf | 
Sort-Object

# Iterates over the items in the $Files array
Foreach($File in $Files)
{
    $FileName = $File.name
    # Should print the file using your default printer, but you might need to pipe this into kill.
    # I can help with that. See here: https://gregcaporale.wordpress.com/2012/01/18/powershell-to-print-files-automatically/
    Start-Process "$ParentDirectory\$FileName" -verb print
}
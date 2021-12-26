$Stegosaurus = New-Object -TypeName PSCustomObject -Property @{name="Stegosaurus"}
$Tyrannosaurus = New-Object -TypeName PSCustomObject -Property @{name="Tyrannosaurus"}
$Brachiosaurus = New-Object -TypeName PSCustomObject -Property @{name="Brachiosaurus"}
$Pterodactyl = New-Object -TypeName PSCustomObject -Property @{name="Pterodactyl"}
$Triceratops = New-Object -TypeName PSCustomObject -Property @{name="Triceratops"}

# $DinosaurList = [System.Collections.Generic.List[object]]::new()
$DinosaurList = [System.Collections.Arraylist]::new()
$DinosaurList.add($Stegosaurus)
$DinosaurList.add($Tyrannosaurus)
$DinosaurList.add($Brachiosaurus)
$DinosaurList.add($Pterodactyl)
$DinosaurList.add($Triceratops)

$DinosaurArray = [object[]]::new($DinosaurList.count)

For($i=0; $i -LT $DinosaurList.count; $i++)
{
    $DinosaurArray[$i] = $DinosaurList[$i]
}

Write-Host "Our dinosaurs are" $DinosaurList
# $DinosaurArray.getType()
# $DinosaurList | export-csv C:\users\scott\desktop\dinolist.csv
# $DinosaurArray | export-csv C:\users\scott\desktop\dinoarray.csv
# @{name="stego"} | export-csv C:\users\scott\desktop\dinodict.csv

$DinosaurList | ForEach-Object {$_.name = "Overwrite"; write-host $_.name}
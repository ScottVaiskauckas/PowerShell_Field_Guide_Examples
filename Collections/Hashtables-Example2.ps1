$HashTable = @{combo1="reuben"; 
            combo2="philly"; 
            combo3="b, l, fried green t"}

Write-Host "Our first combo is a" $HashTable["combo1"]
Write-Host "Our second combo is a" $HashTable["combo2"]
Write-Host "Our third combo is a" $HashTable["combo3"]

$HashTable.add("combo4", "turkey club")

$HashTable.add("combo5", "lox bagel")

Write-Host "Our hash table has a type of" $HashTable.getType()

Write-Host "Our hashtable has the following keys" $HashTable.Keys

Write-Host "Our hashtable has the following values" $HashTable.Values

$HashTable.Remove("combo5")

Write-Host "Our hashtable is not ordered" 
$HashTable


$ObjectList = [System.Collections.Generic.List[object]]::new()

$ObjectList.add("test")
$ObjectList.add(1)
$ObjectList.add(2)
$ObjectList.add(3)

$ObjectList.remove(3)
$ObjectList.remove(2)
$ObjectList.remove(2)


Write-Host '$Objectlist is ' $ObjectList
$ObjectList = [System.Collections.Generic.List[object]]::new()

$ObjectList.add("test")
$ObjectList.add(1)
$ObjectList.add(2)
$ObjectList.add(3)

$ObjectList.getType()
$ObjectList[0].getType()
$ObjectList[1].getType()
$ObjectList[2].getType()
$ObjectList[3].getType()

$ObjectList
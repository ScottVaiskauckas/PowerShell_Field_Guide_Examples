$ArrayList = [System.Collections.Arraylist]::new()

$ArrayList.add("test")
$ArrayList.add(1)
$ArrayList.add(2)
$ArrayList.add(3)

$ArrayList.getType()
$ArrayList[0].getType()
$ArrayList[1].getType()
$ArrayList[2].getType()
$ArrayList[3].getType()

$ArrayList.remove(3)
$ArrayList.add(3)

$ArrayList
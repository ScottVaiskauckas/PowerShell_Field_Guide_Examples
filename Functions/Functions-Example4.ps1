function ReturnsAllValues
{
    $Timezone = Get-TimeZone
    $String = "Here's a string"
    $Int = 32

    $String
    $Int
    Return $Timezone
}

$ReturnedValues = ReturnsAllValues
$ReturnedValues.getType()
$ReturnedValues[0]
$ReturnedValues[1]
$ReturnedValues[2]

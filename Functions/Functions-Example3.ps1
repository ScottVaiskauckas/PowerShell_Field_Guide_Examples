function NoReturnStatement
{
    $Timezone = Get-TimeZone
    $String = "Here's a string"
    $Int = 32

    $String
    $Int
    $Timezone
}

$ReturnedValues = NoReturnStatement
$ReturnedValues.getType()
$ReturnedValues[0]
$ReturnedValues[1]
$ReturnedValues[2]
#Class with getter and setter methods, but no constructor
class Dog
{
    #Properties
    [string]$Breed
    [string]$Name

    #Methods
    #Getter methods
    [string]GetBreed()
    {
        return $this.Breed
    }
    [string]GetName()
    {
        return $this.Name
    }
    
    #Setter methods
    [void]SetBreed($Breed)
    {
        $this.Breed = $Breed
    }
    [void]SetName($Name)
    {
        $this.Name = $Name
    }
}

#Instantiate Object with New-Object cmdlet
$Wilfred = New-Object -TypeName Dog
$Wilfred.SetBreed("Australian Shepherd")
$Wilfred.SetName("Wilfred")
$Wilfred.GetBreed()
$Wilfred.GetName()

#Instantiate Object with static new method
$Bubsy = [Dog]::new()
$Bubsy.SetBreed("mini dachshund")
$Bubsy.SetName("Bubsy")
$Bubsy.GetBreed()
$Bubsy.GetName()

#Class with a constructor
class Cat
{
    #Properties
    [string]$Breed
    [string]$Name

    #Constructor
    Cat([string]$Breed,
        [string]$Name){
            $this.Breed = $Breed
            $this.Name = $Name
        }

    #Methods
    [string]GetBreed()
    {
        return $this.Breed
    }

    [string]GetName()
    {
        return $this.Name
    }

    [void]SetBreed($Breed)
    {
        $this.Breed = $Breed
    }

    [void]SetName($Name)
    {
        $this.Name = $Name
    }
}

$Tabby = New-Object -TypeName Cat -ArgumentList @("Persian", "Steve")
$Tabby.GetBreed()
$Tabby.GetName()

$Poppy = [Cat]::new("tabby", "Poppy")
$Poppy.GetBreed()
$Poppy.GetName()
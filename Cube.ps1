clear-host  
$Value1 = "" 
$Answer = ""
$Value1 = read-host " Enter the value "
Write-Host " Cube of your value is=:"
$Answer= [int]$Value1 * [int]$Value1 * [int]$Value1
$Answer


clear-host  
$Value1 = "" 
$Value2 = "" 
$Answer = ""
$Value1 = read-host " Enter the first value "
$Value2 = read-host " Enter the second value " 
Write-Host " Adding your values up gives:" 
$Answer= [int]$Value1 + [int]$Value2
$Answer
Write-Host " Multiplying your values gives: " 
$Answer= [int]$Value1 * [int]$Value2
$Answer


clear-host  
$Value1 = "" 
$Value1 = read-host " Enter the value "
$Answer= $Value1%2
if ($Answer -eq 0){
Write-Host "value is even" 
}
else{
Write-Host "value is odd" 
}

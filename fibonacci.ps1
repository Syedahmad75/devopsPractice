clear-host
$temp1= 0
$temp2= 1
$temp3= $null
$number= $null
$number= Read-Host "Enter the Number"
Write-Host "$temp1"
Write-Host "$temp2"
for ($i=2; $i -le $number; $i++){
$temp3=$temp1+$temp2
Write-Host "$temp3"
$temp1=$temp2
$temp2=$temp3

}
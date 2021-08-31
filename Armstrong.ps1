clear-host
$number= $null
$temp= $null
$sum= $null
$number= Read-Host "Enter the Number"
$temp1 = $number
while ($number -gt 0){
$temp=[int]$number%10
$sum= $sum+($temp*$temp*$temp)
$number=[math]::floor([int]$number/10)

}
checkArmstrong($sum)

function checkArmstrong ($temp2)
{
$sum=$temp2
if($temp1 -eq $sum)
{
Write-Host "Armstrong Number"
}
else
{
Write-Host "Not Armstrong Number"
}
}

clear-host
$n= $null
$digit= $null
$rev= 0
$num= Read-Host "Enter the Number"
$n = $num

while ($num -ne 0){

$digit=[int]$num % 10
$rev= ($rev * 10) + $digit
$num= [math]::floor([int]$num/10)
$num

}

Write-Host "The reverse of the number is: $rev"
if($n -eq $rev)
{
Write-Host "The number is palindrome"
}
else
{
Write-Host "The number is not a palindrome"
}

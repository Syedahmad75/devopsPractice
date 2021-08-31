clear-host
$myArray = @()
$myArray= Read-Host "Enter the string"
$size= $myArray.Length - 1
$rev = @()
for ($i=$size; $i -ge 0; $i--){
$rev= $rev + $myArray[$i]
}
Write-Host "$rev"
clear-host  
$Value1 = ""
$flag = 0 
$Value1 = read-host " Enter the value "
$m=[int]$Value1 / 2
for ($i=2; $i-le$m; $i++){
 $Answer=$Value1%$i
 if ($Answer -eq 0){
  Write-Host "Number is not Prime"
  $flag=1 
  break
  }
}
if ($flag -eq 0){
Write-Host "Number is Prime" 
}

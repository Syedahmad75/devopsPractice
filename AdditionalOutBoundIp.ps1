Clear-Host
[string[]]$temp=@((Get-AzWebApp).PossibleOutboundIpAddresses.Split("{,}")) | select -Unique 
$count=$temp.Count
Write-Host "Total Number of Unique Additional Outbound Addresses: $count 'n"
$temp

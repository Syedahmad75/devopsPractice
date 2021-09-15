Clear-Host
$sourcePath= Read-Host "Please Enter the Path:"
$hostPath= Read-Host "Enter the Dest Path:"


#To Create New Folder with Date and Time
$date=Get-Date -Format "MM-dd-yyyy-HHmm"
new-item $hostPath  -Name $date  -itemtype directory -Force
$hostNewPath="$hostPath"+ "\" + "$date"


#Get Length and Files from Source Folder
$Files=@(Get-Childitem –Path $sourcePath  -Recurse)
$length=$files.Length

#Main Loop to separate Files
for($i=0; $i -le $length; $i++)
{
   $temp=$files[$i].Extension
   $foldertype=$temp.Trim(".")
 
   $destPath=new-item $hostNewPath  -Name $foldertype  -itemtype directory -Force

   $destPath= "$destPath" + "\"+"$foldertype"
   Get-Childitem –Path $sourcePath  -Include *$temp* -Recurse | Move-Item -Destination $destPath
   Remove-Item $sourcePath
}

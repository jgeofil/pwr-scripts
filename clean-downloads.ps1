# Delete all Files older than 30 day(s)
$Path = "C:\Users\jerem\Downloads\"
$Daysback = "-7"
 
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)
Get-ChildItem $Path -Recurse ( Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item )
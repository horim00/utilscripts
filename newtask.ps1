param([string]$patnum)

$memotxt=$patnum + "memo.txt"

md C:\Users\mhori\Documents\test-folders\$patnum

copy-item -Path "C:\Users\mhori\template-folder\*.xls" -Destination "C:\Users\mhori\Documents\test-folders\$patnum\"  -Recurse
copy-item -Path "C:\Users\mhori\template-folder\*.txt" -Destination "C:\Users\mhori\Documents\test-folders\$patnum\"  -Recurse

rename-item -Path "C:\Users\mhori\Documents\test-folders\$patnum\memo.txt" -NewName  $memotxt
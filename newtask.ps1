param([string]$patnum)

$patnum

md C:\Users\mhori\Documents\test-folders\$patnum

Copy-item -Path "C:\Users\mhori\template-folder\*.xls" -Destination "C:\Users\mhori\Documents\test-folders\$patnum\"  -Recurse
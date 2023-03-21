param([string]$patnum)

$memo="memo.txt"
$patnummemotxt=$patnum+$memo
$sourcedir = "C:\Users\mhori\template-folder\"
$targetdir  = "C:\Users\mhori\Documents\test-folders\"+$patnum+"\"

mkdir $targetdir

copy-item -Path $sourcedir"*.xls" -Destination $targetdir  -Recurse
copy-item -Path $sourcedir"*.txt" -Destination $targetdir  -Recurse

rename-item -Path $targetdir$memo  -NewName  $patnummemotxt
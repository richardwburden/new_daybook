perl -w convertDaybookFiles.pl
pause
perl -w splityears.pl
pause
robocopy "E:\as\test1" "E:\as\test2" /e  /r:2 /w:10 /copy:dat
pause
perl -w convertDaybookFiles.pl "E:\as\daybook_files_new"
pause
perl -w splityears.pl "E:\as\daybook_files_new"
pause
robocopy "E:\as\daybook_files_new" "E:\as\daybook_files" /e  /r:2 /w:10 /copy:dat
pause
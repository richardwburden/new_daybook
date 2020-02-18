perl -w beforeUpdateDaybook.pl "E:\as\users\alpha-*"
pause
dir "E:\as\users\new"
pause
perl -w beforeUpdateDaybook.pl "E:\as\daybook_files\alpha-*"
pause
dir "E:\as\daybook_files\new"
pause
perl -w convertUserFiles.pl "E:\as\users\new"
pause
robocopy "E:\as\users\new" "E:\as\users" /e  /r:2 /w:10 /copy:dat
pause
perl -w convertDaybookFiles.pl "E:\as\daybook_files\new"
pause
perl -w splityears.pl "E:\as\daybook_files\new"
pause
robocopy "E:\as\daybook_files\new" "E:\as\daybook_files" /e  /r:2 /w:10 /copy:dat
pause
mysql -uroot -pUbetrBabl2bkitup < ddl-ndaybook-load-data.sql
pause
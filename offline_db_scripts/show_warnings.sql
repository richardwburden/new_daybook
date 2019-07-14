truncate table cdtl;
set max_error_count=30000;
load data local infile 'E:/as/databases/daybook2/DTL.TXT' into table cdtl fields terminated by 'Xeoc%X%X' lines terminated by 'Xeol%X%X';
show warnings;

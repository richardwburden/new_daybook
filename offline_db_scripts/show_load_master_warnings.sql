truncate table cmaster;
set max_error_count=30000;
load data local infile 'E:/as/databases/daybook2/MASTER.TXT' into table cmaster fields terminated by '\t';
show warnings;

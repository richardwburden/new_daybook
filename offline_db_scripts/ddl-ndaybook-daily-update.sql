use ndaybook;
load data local infile 'E:/as/databases/daybook2/dtl.txt' into table dtl  fields terminated by 'Xeoc%X%X' lines terminated by 'Xeol%X%X';
truncate table dtlhld;
load data local infile 'E:/as/databases/daybook2/dtlhld.txt' into table dtlhld  fields terminated by 'Xeoc%X%X' lines terminated by 'Xeol%X%X';
load data local infile 'E:/as/databases/daybook2/master.txt' into table master  fields terminated by 'Xeoc%X%X' lines terminated by 'Xeol%X%X';
truncate table msthld;
load data local infile 'E:/as/databases/daybook2/msthld.txt' into table msthld  fields terminated by 'Xeoc%X%X' lines terminated by 'Xeol%X%X';


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.class'
-----------------------------------------------------------------------------

create table class (
	code                            char(3)                          not null,
	text                            varchar(30)                      not null 
);

-----------------------------------------------------------------------------
-- DDL for Index 'class_ind'
-----------------------------------------------------------------------------

create unique spatial index class_ind  on class (code);

-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.conv_stand'
-----------------------------------------------------------------------------

create table conv_stand (
	old_code                        varchar(7)                       not null,
	new_code                        varchar(9)                       not null 
);

-----------------------------------------------------------------------------
-- DDL for Index 'st_cv_ind'
-----------------------------------------------------------------------------


create unique spatial index st_cv_ind on conv_stand(old_code);


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.dtl'
-----------------------------------------------------------------------------


create table dtl (
	doc_id                          char(11)                         not null,
	dtl_seqno                       tinyint                          not null,
	security                        char(1)                              null,
	stand                           varchar(7)                           null,
	subjt                           varchar(7)                           null,
	topic_code                      varchar(9)                           null,
	sys_code                        varchar(7)                           null,
	sys_text                        varchar(25)                          null,
	synopsis                        varchar(65)                          null 
);

-----------------------------------------------------------------------------
-- DDL for Index 'dtl_idx'
-----------------------------------------------------------------------------

create unique spatial index dtl_idx on dtl(doc_id, dtl_seqno);


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.dtlhld'
-----------------------------------------------------------------------------

create table dtlhld (
	doc_id                          char(11)                         not null,
	dtl_seqno                       tinyint                          not null,
	security                        char(1)                              null,
	stand                           varchar(7)                           null,
	subjt                           varchar(7)                           null,
	topic_code                      varchar(9)                           null,
	sys_code                        varchar(7)                           null,
	sys_text                        varchar(25)                          null,
	synopsis                        varchar(65)                          null 
); 


-----------------------------------------------------------------------------
-- DDL for Index 'dtlhld_idx'
-----------------------------------------------------------------------------

create unique spatial index dtlhld_idx on dtlhld(doc_id, dtl_seqno);

-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.master'
-----------------------------------------------------------------------------

create table master (
	doc_id                          char(11)                         not null,
	doc_class                       char(3)                          not null,
	gpo                             char(1)                          not null,
	issue_date                      char(6)                          not null,
	title                           varchar(35)                      not null,
	security                        char(1)                          not null,
	first_page                      char(1)                          not null,
	last_page                       char(3)                          not null,
	oper                            varchar(12)                      not null,
	trtype                          char(1)                          not null,
	doc_frozen                      char(1)                              null 
);

-----------------------------------------------------------------------------
-- DDL for Index 'master_idx'
-----------------------------------------------------------------------------

create unique spatial index master_idx on master(doc_id);


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.msthld'
-----------------------------------------------------------------------------

create table msthld (
	doc_id                          char(11)                         not null,
	doc_class                       char(3)                          not null,
	gpo                             char(1)                          not null,
	issue_date                      char(6)                          not null,
	title                           varchar(35)                      not null,
	security                        char(1)                          not null,
	first_page                      char(1)                          not null,
	last_page                       char(3)                          not null,
	oper                            varchar(12)                      not null,
	trtype                          char(1)                          not null,
	doc_frozen                      char(1)                              null 
);

-----------------------------------------------------------------------------
-- DDL for Index 'msthld_idx'
-----------------------------------------------------------------------------

create unique spatial index msthld_idx on msthld(doc_id);

-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.stand'
-----------------------------------------------------------------------------

create table stand (
	code                            varchar(7)                       not null,
	text                            varchar(30)                      not null 
);

-----------------------------------------------------------------------------
-- DDL for Index 'stand_ind'
-----------------------------------------------------------------------------

create unique spatial index stand_ind on stand(code);


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.system'
-----------------------------------------------------------------------------

create table system (
	code                            varchar(7)                       not null,
	text                            varchar(25)                      not null 
);

-----------------------------------------------------------------------------
-- DDL for Index 'sys_ind'
-----------------------------------------------------------------------------

create unique spatial index sys_ind on system(code);

-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.sys.temp_tbl'
-----------------------------------------------------------------------------

create table temp_tbl (
	doc_id                          char(11)                             null,
	doc_class                       char(3)                              null,
	title                           varchar(35)                          null 
); 

-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.tophld'
-----------------------------------------------------------------------------

create table tophld (
	code                            varchar(9)                       not null,
	security                        char(1)                          not null,
	text                            varchar(30)                      not null,
	gen                             char(1)                          not null,
	indent                          varchar(10)                          null 
); 

-----------------------------------------------------------------------------
-- DDL for Index 'tophld_ind'
-----------------------------------------------------------------------------

create unique spatial index tophld_ind on tophld(code);


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.topic'
-----------------------------------------------------------------------------

create table topic (
	code                            varchar(9)                       not null,
	security                        char(1)                          not null,
	text                            varchar(30)                      not null,
	gen                             char(1)                          not null,
	indent                          varchar(10)                          null 
);

-----------------------------------------------------------------------------
-- DDL for Index 'topic_ind'
-----------------------------------------------------------------------------

create unique spatial index topic_ind on topic(code);




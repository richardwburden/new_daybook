/* alpha_db */
USE master
go


PRINT "<<<< CREATE DATABASE ndaybook>>>>"
go


IF EXISTS (SELECT 1 FROM master.dbo.sysdatabases
	   WHERE name = 'ndaybook')
	DROP DATABASE ndaybook
go


IF (@@error != 0)
BEGIN
	PRINT "Error dropping database 'ndaybook'"
	SELECT syb_quit()
END
go


CREATE DATABASE ndaybook
	    ON master = '3M' -- 1536 pages
WITH DURABILITY = FULL
go


ALTER DATABASE ndaybook
	LOG ON alpha_db_log_device = '9216M' -- 4718592 pages
go


ALTER DATABASE ndaybook
	    ON master = '8192M' -- 4194304 pages
go


use ndaybook
go

exec sp_changedbowner 'sa', true 
go

exec master.dbo.sp_dboption ndaybook, 'select into/bulkcopy/pllsort', true
go

checkpoint
go


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.class'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dbo.class" >>>>>'
go

use ndaybook
go 

setuser 'dbo'
go 

create table class (
	code                            char(3)                          not null,
	text                            varchar(30)                      not null 
)
lock allpages
with dml_logging = full
 on 'daybook_seg'
partition by roundrobin 1 on ('daybook_seg') 
go 

Grant Select on dbo.class to navigator_role Granted by dbo
go
Grant Select on dbo.class to selectors Granted by dbo
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'class_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "class_ind" >>>>>'
go 

create unique clustered index class_ind 
on ndaybook.dbo.class(code)
with index_compression = none 
on 'daybook_seg' 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.conv_stand'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dbo.conv_stand" >>>>>'
go

setuser 'dbo'
go 

create table conv_stand (
	old_code                        varchar(7)                       not null,
	new_code                        varchar(9)                       not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on dbo.conv_stand to navigator_role Granted by dbo
go
Grant Select on dbo.conv_stand to selectors Granted by dbo
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'st_cv_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "st_cv_ind" >>>>>'
go 

create unique clustered index st_cv_ind 
on ndaybook.dbo.conv_stand(old_code)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.dtl'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dbo.dtl" >>>>>'
go

setuser 'dbo'
go 

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
)
lock allpages
with dml_logging = full
 on 'default'
go 

Revoke Select on dbo.dtl to daybook_select Granted by dbo
go
Grant Select on dbo.dtl to navigator_role Granted by dbo
go
Grant Select on dbo.dtl to selectors Granted by dbo
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'dtl_idx'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "dtl_idx" >>>>>'
go 

create unique clustered index dtl_idx 
on ndaybook.dbo.dtl(doc_id, dtl_seqno)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.dtlhld'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dbo.dtlhld" >>>>>'
go

setuser 'dbo'
go 

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
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on dbo.dtlhld to navigator_role Granted by dbo
go
Grant Select on dbo.dtlhld to selectors Granted by dbo
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'dtlhld_idx'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "dtlhld_idx" >>>>>'
go 

create unique clustered index dtlhld_idx 
on ndaybook.dbo.dtlhld(doc_id, dtl_seqno)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.master'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dbo.master" >>>>>'
go

setuser 'dbo'
go 

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
)
lock allpages
with dml_logging = full
 on 'default'
go 

Revoke Select on dbo.master to daybook_select Granted by dbo
go
Grant Select on dbo.master to navigator_role Granted by dbo
go
Grant Select on dbo.master to selectors Granted by dbo
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'master_idx'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "master_idx" >>>>>'
go 

create unique clustered index master_idx 
on ndaybook.dbo.master(doc_id)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.msthld'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dbo.msthld" >>>>>'
go

setuser 'dbo'
go 

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
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on dbo.msthld to navigator_role Granted by dbo
go
Grant Select on dbo.msthld to selectors Granted by dbo
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'msthld_idx'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "msthld_idx" >>>>>'
go 

create unique clustered index msthld_idx 
on ndaybook.dbo.msthld(doc_id)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.jph.offline3'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.jph.offline3" >>>>>'
go

setuser 'jph'
go 

create table offline3 (
	doc_id                          char(11)                             null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on jph.offline3 to navigator_role Granted by jph
go
Grant Select on jph.offline3 to selectors Granted by jph
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.jph.offline4'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.jph.offline4" >>>>>'
go

setuser 'jph'
go 

create table offline4 (
	doc_id                          char(11)                             null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on jph.offline4 to navigator_role Granted by jph
go
Grant Select on jph.offline4 to selectors Granted by jph
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.jph.offline8'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.jph.offline8" >>>>>'
go

setuser 'jph'
go 

create table offline8 (
	doc_id                          char(11)                             null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on jph.offline8 to navigator_role Granted by jph
go
Grant Select on jph.offline8 to selectors Granted by jph
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.stand'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dbo.stand" >>>>>'
go

setuser 'dbo'
go 

create table stand (
	code                            varchar(7)                       not null,
	text                            varchar(30)                      not null 
)
lock allpages
with dml_logging = full
 on 'daybook_seg'
partition by roundrobin 1 on ('daybook_seg') 
go 

Grant Select on dbo.stand to navigator_role Granted by dbo
go
Grant Select on dbo.stand to selectors Granted by dbo
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'stand_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "stand_ind" >>>>>'
go 

create unique clustered index stand_ind 
on ndaybook.dbo.stand(code)
with index_compression = none 
on 'daybook_seg' 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ssd.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ssd.subset" >>>>>'
go

setuser 'ssd'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ssd.subset to navigator_role Granted by ssd
go
Grant Select on ssd.subset to selectors Granted by ssd
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ssd.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.pbg.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.pbg.subset" >>>>>'
go

setuser 'pbg'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on pbg.subset to navigator_role Granted by pbg
go
Grant Select on pbg.subset to selectors Granted by pbg
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.pbg.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.drr.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.drr.subset" >>>>>'
go

setuser 'drr'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on drr.subset to navigator_role Granted by drr
go
Grant Select on drr.subset to selectors Granted by drr
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.drr.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.mty.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.mty.subset" >>>>>'
go

setuser 'mty'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on mty.subset to navigator_role Granted by mty
go
Grant Select on mty.subset to selectors Granted by mty
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.mty.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.jc_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.jc_.subset" >>>>>'
go

setuser 'jc_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on jc_.subset to navigator_role Granted by jc_
go
Grant Select on jc_.subset to selectors Granted by jc_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.jc_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.bsn.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.bsn.subset" >>>>>'
go

setuser 'bsn'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on bsn.subset to navigator_role Granted by bsn
go
Grant Select on bsn.subset to selectors Granted by bsn
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.bsn.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dc_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dc_.subset" >>>>>'
go

setuser 'dc_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on dc_.subset to navigator_role Granted by dc_
go
Grant Select on dc_.subset to selectors Granted by dc_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.dc_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ews.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ews.subset" >>>>>'
go

setuser 'ews'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ews.subset to navigator_role Granted by ews
go
Grant Select on ews.subset to selectors Granted by ews
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ews.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.if_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.if_.subset" >>>>>'
go

setuser 'if_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on if_.subset to navigator_role Granted by if_
go
Grant Select on if_.subset to selectors Granted by if_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.if_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.lsw.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.lsw.subset" >>>>>'
go

setuser 'lsw'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on lsw.subset to navigator_role Granted by lsw
go
Grant Select on lsw.subset to selectors Granted by lsw
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.lsw.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ncs.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ncs.subset" >>>>>'
go

setuser 'ncs'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ncs.subset to navigator_role Granted by ncs
go
Grant Select on ncs.subset to selectors Granted by ncs
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ncs.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.rfs.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.rfs.subset" >>>>>'
go

setuser 'rfs'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on rfs.subset to navigator_role Granted by rfs
go
Grant Select on rfs.subset to selectors Granted by rfs
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.rfs.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.sea.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.sea.subset" >>>>>'
go

setuser 'sea'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on sea.subset to navigator_role Granted by sea
go
Grant Select on sea.subset to selectors Granted by sea
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.sea.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.spm.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.spm.subset" >>>>>'
go

setuser 'spm'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on spm.subset to navigator_role Granted by spm
go
Grant Select on spm.subset to selectors Granted by spm
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.spm.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.wfw.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.wfw.subset" >>>>>'
go

setuser 'wfw'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on wfw.subset to navigator_role Granted by wfw
go
Grant Select on wfw.subset to selectors Granted by wfw
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.wfw.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.sek.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.sek.subset" >>>>>'
go

setuser 'sek'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on sek.subset to navigator_role Granted by sek
go
Grant Select on sek.subset to selectors Granted by sek
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.sek.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.det.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.det.subset" >>>>>'
go

setuser 'det'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on det.subset to navigator_role Granted by det
go
Grant Select on det.subset to selectors Granted by det
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.det.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.rsk.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.rsk.subset" >>>>>'
go

setuser 'rsk'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on rsk.subset to navigator_role Granted by rsk
go
Grant Select on rsk.subset to selectors Granted by rsk
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.rsk.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.aky.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.aky.subset" >>>>>'
go

setuser 'aky'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on aky.subset to navigator_role Granted by aky
go
Grant Select on aky.subset to selectors Granted by aky
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.aky.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dta.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dta.subset" >>>>>'
go

setuser 'dta'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on dta.subset to navigator_role Granted by dta
go
Grant Select on dta.subset to selectors Granted by dta
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.dta.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.bmd.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.bmd.subset" >>>>>'
go

setuser 'bmd'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on bmd.subset to navigator_role Granted by bmd
go
Grant Select on bmd.subset to selectors Granted by bmd
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.bmd.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.csn.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.csn.subset" >>>>>'
go

setuser 'csn'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on csn.subset to navigator_role Granted by csn
go
Grant Select on csn.subset to selectors Granted by csn
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.csn.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dvb.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dvb.subset" >>>>>'
go

setuser 'dvb'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on dvb.subset to navigator_role Granted by dvb
go
Grant Select on dvb.subset to selectors Granted by dvb
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.dvb.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.grc.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.grc.subset" >>>>>'
go

setuser 'grc'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on grc.subset to navigator_role Granted by grc
go
Grant Select on grc.subset to selectors Granted by grc
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.grc.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.kam.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.kam.subset" >>>>>'
go

setuser 'kam'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on kam.subset to navigator_role Granted by kam
go
Grant Select on kam.subset to selectors Granted by kam
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.kam.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.mpb.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.mpb.subset" >>>>>'
go

setuser 'mpb'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on mpb.subset to navigator_role Granted by mpb
go
Grant Select on mpb.subset to selectors Granted by mpb
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.mpb.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ref.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ref.subset" >>>>>'
go

setuser 'ref'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ref.subset to navigator_role Granted by ref
go
Grant Select on ref.subset to selectors Granted by ref
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ref.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.rss.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.rss.subset" >>>>>'
go

setuser 'rss'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on rss.subset to navigator_role Granted by rss
go
Grant Select on rss.subset to selectors Granted by rss
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.rss.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.smt.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.smt.subset" >>>>>'
go

setuser 'smt'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on smt.subset to navigator_role Granted by smt
go
Grant Select on smt.subset to selectors Granted by smt
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.smt.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.wcj.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.wcj.subset" >>>>>'
go

setuser 'wcj'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on wcj.subset to navigator_role Granted by wcj
go
Grant Select on wcj.subset to selectors Granted by wcj
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.wcj.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.pb_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.pb_.subset" >>>>>'
go

setuser 'pb_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on pb_.subset to navigator_role Granted by pb_
go
Grant Select on pb_.subset to selectors Granted by pb_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.pb_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.kh_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.kh_.subset" >>>>>'
go

setuser 'kh_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on kh_.subset to navigator_role Granted by kh_
go
Grant Select on kh_.subset to selectors Granted by kh_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.kh_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.cmh.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.cmh.subset" >>>>>'
go

setuser 'cmh'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on cmh.subset to navigator_role Granted by cmh
go
Grant Select on cmh.subset to selectors Granted by cmh
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.cmh.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ars.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ars.subset" >>>>>'
go

setuser 'ars'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ars.subset to navigator_role Granted by ars
go
Grant Select on ars.subset to selectors Granted by ars
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ars.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ap_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ap_.subset" >>>>>'
go

setuser 'ap_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ap_.subset to navigator_role Granted by ap_
go
Grant Select on ap_.subset to selectors Granted by ap_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ap_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.mlo.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.mlo.subset" >>>>>'
go

setuser 'mlo'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on mlo.subset to navigator_role Granted by mlo
go
Grant Select on mlo.subset to selectors Granted by mlo
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.mlo.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.cj_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.cj_.subset" >>>>>'
go

setuser 'cj_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on cj_.subset to navigator_role Granted by cj_
go
Grant Select on cj_.subset to selectors Granted by cj_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.cj_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dns.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dns.subset" >>>>>'
go

setuser 'dns'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on dns.subset to navigator_role Granted by dns
go
Grant Select on dns.subset to selectors Granted by dns
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.dns.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ghs.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ghs.subset" >>>>>'
go

setuser 'ghs'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ghs.subset to navigator_role Granted by ghs
go
Grant Select on ghs.subset to selectors Granted by ghs
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ghs.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.js_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.js_.subset" >>>>>'
go

setuser 'js_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on js_.subset to navigator_role Granted by js_
go
Grant Select on js_.subset to selectors Granted by js_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.js_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.mjf.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.mjf.subset" >>>>>'
go

setuser 'mjf'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on mjf.subset to navigator_role Granted by mjf
go
Grant Select on mjf.subset to selectors Granted by mjf
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.mjf.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.psu.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.psu.subset" >>>>>'
go

setuser 'psu'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on psu.subset to navigator_role Granted by psu
go
Grant Select on psu.subset to selectors Granted by psu
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.psu.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.rsb.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.rsb.subset" >>>>>'
go

setuser 'rsb'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on rsb.subset to navigator_role Granted by rsb
go
Grant Select on rsb.subset to selectors Granted by rsb
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.rsb.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.skr.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.skr.subset" >>>>>'
go

setuser 'skr'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on skr.subset to navigator_role Granted by skr
go
Grant Select on skr.subset to selectors Granted by skr
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.skr.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.tnr.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.tnr.subset" >>>>>'
go

setuser 'tnr'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on tnr.subset to navigator_role Granted by tnr
go
Grant Select on tnr.subset to selectors Granted by tnr
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.tnr.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.tla.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.tla.subset" >>>>>'
go

setuser 'tla'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on tla.subset to navigator_role Granted by tla
go
Grant Select on tla.subset to selectors Granted by tla
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.tla.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.bmb.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.bmb.subset" >>>>>'
go

setuser 'bmb'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on bmb.subset to navigator_role Granted by bmb
go
Grant Select on bmb.subset to selectors Granted by bmb
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.bmb.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.tf_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.tf_.subset" >>>>>'
go

setuser 'tf_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on tf_.subset to navigator_role Granted by tf_
go
Grant Select on tf_.subset to selectors Granted by tf_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.tf_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.wdy.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.wdy.subset" >>>>>'
go

setuser 'wdy'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on wdy.subset to navigator_role Granted by wdy
go
Grant Select on wdy.subset to selectors Granted by wdy
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.wdy.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.bsm.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.bsm.subset" >>>>>'
go

setuser 'bsm'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on bsm.subset to navigator_role Granted by bsm
go
Grant Select on bsm.subset to selectors Granted by bsm
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.bsm.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ahc.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ahc.subset" >>>>>'
go

setuser 'ahc'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ahc.subset to navigator_role Granted by ahc
go
Grant Select on ahc.subset to selectors Granted by ahc
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ahc.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.cjo.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.cjo.subset" >>>>>'
go

setuser 'cjo'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on cjo.subset to navigator_role Granted by cjo
go
Grant Select on cjo.subset to selectors Granted by cjo
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.cjo.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dhs.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dhs.subset" >>>>>'
go

setuser 'dhs'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on dhs.subset to navigator_role Granted by dhs
go
Grant Select on dhs.subset to selectors Granted by dhs
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.dhs.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ggr.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ggr.subset" >>>>>'
go

setuser 'ggr'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ggr.subset to navigator_role Granted by ggr
go
Grant Select on ggr.subset to selectors Granted by ggr
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ggr.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.mgm.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.mgm.subset" >>>>>'
go

setuser 'mgm'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on mgm.subset to navigator_role Granted by mgm
go
Grant Select on mgm.subset to selectors Granted by mgm
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.mgm.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.pds.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.pds.subset" >>>>>'
go

setuser 'pds'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on pds.subset to navigator_role Granted by pds
go
Grant Select on pds.subset to selectors Granted by pds
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.pds.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.rmc.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.rmc.subset" >>>>>'
go

setuser 'rmc'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on rmc.subset to navigator_role Granted by rmc
go
Grant Select on rmc.subset to selectors Granted by rmc
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.rmc.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.sjk.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.sjk.subset" >>>>>'
go

setuser 'sjk'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on sjk.subset to navigator_role Granted by sjk
go
Grant Select on sjk.subset to selectors Granted by sjk
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.sjk.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ssu.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ssu.subset" >>>>>'
go

setuser 'ssu'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ssu.subset to navigator_role Granted by ssu
go
Grant Select on ssu.subset to selectors Granted by ssu
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ssu.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.gh_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.gh_.subset" >>>>>'
go

setuser 'gh_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on gh_.subset to navigator_role Granted by gh_
go
Grant Select on gh_.subset to selectors Granted by gh_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.gh_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.hwv.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.hwv.subset" >>>>>'
go

setuser 'hwv'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on hwv.subset to navigator_role Granted by hwv
go
Grant Select on hwv.subset to selectors Granted by hwv
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.hwv.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.sey.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.sey.subset" >>>>>'
go

setuser 'sey'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on sey.subset to navigator_role Granted by sey
go
Grant Select on sey.subset to selectors Granted by sey
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.sey.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ccc.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ccc.subset" >>>>>'
go

setuser 'ccc'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ccc.subset to navigator_role Granted by ccc
go
Grant Select on ccc.subset to selectors Granted by ccc
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ccc.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.cbs.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.cbs.subset" >>>>>'
go

setuser 'cbs'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on cbs.subset to navigator_role Granted by cbs
go
Grant Select on cbs.subset to selectors Granted by cbs
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.cbs.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ddg.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ddg.subset" >>>>>'
go

setuser 'ddg'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ddg.subset to navigator_role Granted by ddg
go
Grant Select on ddg.subset to selectors Granted by ddg
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ddg.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.fej.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.fej.subset" >>>>>'
go

setuser 'fej'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on fej.subset to navigator_role Granted by fej
go
Grant Select on fej.subset to selectors Granted by fej
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.fej.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.jba.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.jba.subset" >>>>>'
go

setuser 'jba'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on jba.subset to navigator_role Granted by jba
go
Grant Select on jba.subset to selectors Granted by jba
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.jba.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.mcs.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.mcs.subset" >>>>>'
go

setuser 'mcs'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on mcs.subset to navigator_role Granted by mcs
go
Grant Select on mcs.subset to selectors Granted by mcs
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.mcs.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.nct.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.nct.subset" >>>>>'
go

setuser 'nct'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on nct.subset to navigator_role Granted by nct
go
Grant Select on nct.subset to selectors Granted by nct
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.nct.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.se_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.se_.subset" >>>>>'
go

setuser 'se_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on se_.subset to navigator_role Granted by se_
go
Grant Select on se_.subset to selectors Granted by se_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.se_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.sre.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.sre.subset" >>>>>'
go

setuser 'sre'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on sre.subset to navigator_role Granted by sre
go
Grant Select on sre.subset to selectors Granted by sre
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.sre.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.wie.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.wie.subset" >>>>>'
go

setuser 'wie'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on wie.subset to navigator_role Granted by wie
go
Grant Select on wie.subset to selectors Granted by wie
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.wie.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.agg.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.agg.subset" >>>>>'
go

setuser 'agg'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on agg.subset to navigator_role Granted by agg
go
Grant Select on agg.subset to selectors Granted by agg
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.agg.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.gas.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.gas.subset" >>>>>'
go

setuser 'gas'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on gas.subset to navigator_role Granted by gas
go
Grant Select on gas.subset to selectors Granted by gas
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.gas.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.bd_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.bd_.subset" >>>>>'
go

setuser 'bd_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on bd_.subset to navigator_role Granted by bd_
go
Grant Select on bd_.subset to selectors Granted by bd_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.bd_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dmy.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dmy.subset" >>>>>'
go

setuser 'dmy'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on dmy.subset to navigator_role Granted by dmy
go
Grant Select on dmy.subset to selectors Granted by dmy
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.dmy.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.brj.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.brj.subset" >>>>>'
go

setuser 'brj'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on brj.subset to navigator_role Granted by brj
go
Grant Select on brj.subset to selectors Granted by brj
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.brj.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.pvl.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.pvl.subset" >>>>>'
go

setuser 'pvl'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on pvl.subset to navigator_role Granted by pvl
go
Grant Select on pvl.subset to selectors Granted by pvl
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.pvl.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.das.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.das.subset" >>>>>'
go

setuser 'das'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on das.subset to navigator_role Granted by das
go
Grant Select on das.subset to selectors Granted by das
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.das.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ecb.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ecb.subset" >>>>>'
go

setuser 'ecb'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ecb.subset to navigator_role Granted by ecb
go
Grant Select on ecb.subset to selectors Granted by ecb
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ecb.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.idl.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.idl.subset" >>>>>'
go

setuser 'idl'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on idl.subset to navigator_role Granted by idl
go
Grant Select on idl.subset to selectors Granted by idl
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.idl.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.krn.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.krn.subset" >>>>>'
go

setuser 'krn'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on krn.subset to navigator_role Granted by krn
go
Grant Select on krn.subset to selectors Granted by krn
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.krn.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.mtl.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.mtl.subset" >>>>>'
go

setuser 'mtl'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on mtl.subset to navigator_role Granted by mtl
go
Grant Select on mtl.subset to selectors Granted by mtl
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.mtl.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.rew.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.rew.subset" >>>>>'
go

setuser 'rew'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on rew.subset to navigator_role Granted by rew
go
Grant Select on rew.subset to selectors Granted by rew
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.rew.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.sb_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.sb_.subset" >>>>>'
go

setuser 'sb_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on sb_.subset to navigator_role Granted by sb_
go
Grant Select on sb_.subset to selectors Granted by sb_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.sb_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.wdc.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.wdc.subset" >>>>>'
go

setuser 'wdc'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on wdc.subset to navigator_role Granted by wdc
go
Grant Select on wdc.subset to selectors Granted by wdc
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.wdc.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.rma.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.rma.subset" >>>>>'
go

setuser 'rma'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on rma.subset to navigator_role Granted by rma
go
Grant Select on rma.subset to selectors Granted by rma
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.rma.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.cmc.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.cmc.subset" >>>>>'
go

setuser 'cmc'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on cmc.subset to navigator_role Granted by cmc
go
Grant Select on cmc.subset to selectors Granted by cmc
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.cmc.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.sam.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.sam.subset" >>>>>'
go

setuser 'sam'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on sam.subset to navigator_role Granted by sam
go
Grant Select on sam.subset to selectors Granted by sam
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.sam.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.edg.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.edg.subset" >>>>>'
go

setuser 'edg'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on edg.subset to navigator_role Granted by edg
go
Grant Select on edg.subset to selectors Granted by edg
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.edg.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.bal.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.bal.subset" >>>>>'
go

setuser 'bal'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on bal.subset to navigator_role Granted by bal
go
Grant Select on bal.subset to selectors Granted by bal
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.bal.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.tja.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.tja.subset" >>>>>'
go

setuser 'tja'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on tja.subset to navigator_role Granted by tja
go
Grant Select on tja.subset to selectors Granted by tja
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.tja.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.crr.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.crr.subset" >>>>>'
go

setuser 'crr'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on crr.subset to navigator_role Granted by crr
go
Grant Select on crr.subset to selectors Granted by crr
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.crr.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.gmr.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.gmr.subset" >>>>>'
go

setuser 'gmr'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on gmr.subset to navigator_role Granted by gmr
go
Grant Select on gmr.subset to selectors Granted by gmr
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.gmr.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.jws.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.jws.subset" >>>>>'
go

setuser 'jws'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on jws.subset to navigator_role Granted by jws
go
Grant Select on jws.subset to selectors Granted by jws
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.jws.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.rbd.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.rbd.subset" >>>>>'
go

setuser 'rbd'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on rbd.subset to navigator_role Granted by rbd
go
Grant Select on rbd.subset to selectors Granted by rbd
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.rbd.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.rsm.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.rsm.subset" >>>>>'
go

setuser 'rsm'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on rsm.subset to navigator_role Granted by rsm
go
Grant Select on rsm.subset to selectors Granted by rsm
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.rsm.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.skv.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.skv.subset" >>>>>'
go

setuser 'skv'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on skv.subset to navigator_role Granted by skv
go
Grant Select on skv.subset to selectors Granted by skv
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.skv.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.vfr.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.vfr.subset" >>>>>'
go

setuser 'vfr'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on vfr.subset to navigator_role Granted by vfr
go
Grant Select on vfr.subset to selectors Granted by vfr
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.vfr.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ib_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ib_.subset" >>>>>'
go

setuser 'ib_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ib_.subset to navigator_role Granted by ib_
go
Grant Select on ib_.subset to selectors Granted by ib_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ib_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.rwb.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.rwb.subset" >>>>>'
go

setuser 'rwb'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on rwb.subset to navigator_role Granted by rwb
go
Grant Select on rwb.subset to selectors Granted by rwb
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.rwb.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.iam.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.iam.subset" >>>>>'
go

setuser 'iam'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on iam.subset to navigator_role Granted by iam
go
Grant Select on iam.subset to selectors Granted by iam
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.iam.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.sj_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.sj_.subset" >>>>>'
go

setuser 'sj_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on sj_.subset to navigator_role Granted by sj_
go
Grant Select on sj_.subset to selectors Granted by sj_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.sj_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ald.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ald.subset" >>>>>'
go

setuser 'ald'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ald.subset to navigator_role Granted by ald
go
Grant Select on ald.subset to selectors Granted by ald
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ald.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dea.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dea.subset" >>>>>'
go

setuser 'dea'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on dea.subset to navigator_role Granted by dea
go
Grant Select on dea.subset to selectors Granted by dea
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.dea.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.cjw.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.cjw.subset" >>>>>'
go

setuser 'cjw'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on cjw.subset to navigator_role Granted by cjw
go
Grant Select on cjw.subset to selectors Granted by cjw
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.cjw.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dms.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dms.subset" >>>>>'
go

setuser 'dms'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on dms.subset to navigator_role Granted by dms
go
Grant Select on dms.subset to selectors Granted by dms
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.dms.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ggs.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ggs.subset" >>>>>'
go

setuser 'ggs'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ggs.subset to navigator_role Granted by ggs
go
Grant Select on ggs.subset to selectors Granted by ggs
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ggs.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.jph.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.jph.subset" >>>>>'
go

setuser 'jph'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on jph.subset to navigator_role Granted by jph
go
Grant Select on jph.subset to selectors Granted by jph
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.jph.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.psk.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.psk.subset" >>>>>'
go

setuser 'psk'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on psk.subset to navigator_role Granted by psk
go
Grant Select on psk.subset to selectors Granted by psk
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.psk.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ron.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ron.subset" >>>>>'
go

setuser 'ron'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ron.subset to navigator_role Granted by ron
go
Grant Select on ron.subset to selectors Granted by ron
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ron.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.skl.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.skl.subset" >>>>>'
go

setuser 'skl'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on skl.subset to navigator_role Granted by skl
go
Grant Select on skl.subset to selectors Granted by skl
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.skl.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.ssw.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.ssw.subset" >>>>>'
go

setuser 'ssw'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on ssw.subset to navigator_role Granted by ssw
go
Grant Select on ssw.subset to selectors Granted by ssw
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.ssw.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.lmd.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.lmd.subset" >>>>>'
go

setuser 'lmd'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on lmd.subset to navigator_role Granted by lmd
go
Grant Select on lmd.subset to selectors Granted by lmd
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.lmd.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.mob.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.mob.subset" >>>>>'
go

setuser 'mob'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on mob.subset to navigator_role Granted by mob
go
Grant Select on mob.subset to selectors Granted by mob
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.mob.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.lbv.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.lbv.subset" >>>>>'
go

setuser 'lbv'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on lbv.subset to navigator_role Granted by lbv
go
Grant Select on lbv.subset to selectors Granted by lbv
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.lbv.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.sfy.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.sfy.subset" >>>>>'
go

setuser 'sfy'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on sfy.subset to navigator_role Granted by sfy
go
Grant Select on sfy.subset to selectors Granted by sfy
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.sfy.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.mab.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.mab.subset" >>>>>'
go

setuser 'mab'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on mab.subset to navigator_role Granted by mab
go
Grant Select on mab.subset to selectors Granted by mab
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.mab.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.chi.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.chi.subset" >>>>>'
go

setuser 'chi'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on chi.subset to navigator_role Granted by chi
go
Grant Select on chi.subset to selectors Granted by chi
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.chi.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dhf.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dhf.subset" >>>>>'
go

setuser 'dhf'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on dhf.subset to navigator_role Granted by dhf
go
Grant Select on dhf.subset to selectors Granted by dhf
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.dhf.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.fhb.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.fhb.subset" >>>>>'
go

setuser 'fhb'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on fhb.subset to navigator_role Granted by fhb
go
Grant Select on fhb.subset to selectors Granted by fhb
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.fhb.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.jlh.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.jlh.subset" >>>>>'
go

setuser 'jlh'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on jlh.subset to navigator_role Granted by jlh
go
Grant Select on jlh.subset to selectors Granted by jlh
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.jlh.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.mgf.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.mgf.subset" >>>>>'
go

setuser 'mgf'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on mgf.subset to navigator_role Granted by mgf
go
Grant Select on mgf.subset to selectors Granted by mgf
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.mgf.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.nj_.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.nj_.subset" >>>>>'
go

setuser 'nj_'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on nj_.subset to navigator_role Granted by nj_
go
Grant Select on nj_.subset to selectors Granted by nj_
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.nj_.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.rlb.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.rlb.subset" >>>>>'
go

setuser 'rlb'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on rlb.subset to navigator_role Granted by rlb
go
Grant Select on rlb.subset to selectors Granted by rlb
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.rlb.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.sfn.subset'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.sfn.subset" >>>>>'
go

setuser 'sfn'
go 

create table subset (
	doc_id                          char(11)                         not null,
	note                            char(1)                          not null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on sfn.subset to navigator_role Granted by sfn
go
Grant Select on sfn.subset to selectors Granted by sfn
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'subset_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "subset_ind" >>>>>'
go 

create clustered index subset_ind 
on ndaybook.sfn.subset(doc_id, note)
with index_compression = none 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.system'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dbo.system" >>>>>'
go

setuser 'dbo'
go 

create table system (
	code                            varchar(7)                       not null,
	text                            varchar(25)                      not null 
)
lock allpages
with dml_logging = full
 on 'daybook_seg'
partition by roundrobin 1 on ('daybook_seg') 
go 

Grant Select on dbo.system to navigator_role Granted by dbo
go
Grant Select on dbo.system to selectors Granted by dbo
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'sys_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "sys_ind" >>>>>'
go 

create unique clustered index sys_ind 
on ndaybook.dbo.system(code)
with index_compression = none 
on 'daybook_seg' 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.sys.temp_tbl'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.sys.temp_tbl" >>>>>'
go

setuser 'sys'
go 

create table temp_tbl (
	doc_id                          char(11)                             null,
	doc_class                       char(3)                              null,
	title                           varchar(35)                          null 
)
lock allpages
with dml_logging = full
 on 'default'
go 

Grant Select on sys.temp_tbl to navigator_role Granted by sys
go
Grant Select on sys.temp_tbl to selectors Granted by sys
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.tophld'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dbo.tophld" >>>>>'
go

setuser 'dbo'
go 

create table tophld (
	code                            varchar(9)                       not null,
	security                        char(1)                          not null,
	text                            varchar(30)                      not null,
	gen                             char(1)                          not null,
	indent                          varchar(10)                          null 
)
lock allpages
with dml_logging = full
 on 'daybook_seg'
partition by roundrobin 1 on ('daybook_seg') 
go 

Grant Select on dbo.tophld to navigator_role Granted by dbo
go
Grant Select on dbo.tophld to selectors Granted by dbo
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'tophld_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "tophld_ind" >>>>>'
go 

create unique clustered index tophld_ind 
on ndaybook.dbo.tophld(code)
with index_compression = none 
on 'daybook_seg' 
go 


-----------------------------------------------------------------------------
-- DDL for Table 'ndaybook.dbo.topic'
-----------------------------------------------------------------------------
print '<<<<< CREATING Table - "ndaybook.dbo.topic" >>>>>'
go

setuser 'dbo'
go 

create table topic (
	code                            varchar(9)                       not null,
	security                        char(1)                          not null,
	text                            varchar(30)                      not null,
	gen                             char(1)                          not null,
	indent                          varchar(10)                          null 
)
lock allpages
with dml_logging = full
 on 'daybook_seg'
partition by roundrobin 1 on ('daybook_seg') 
go 

Grant Select on dbo.topic to navigator_role Granted by dbo
go
Grant Select on dbo.topic to selectors Granted by dbo
go

setuser
go 

-----------------------------------------------------------------------------
-- DDL for Index 'topic_ind'
-----------------------------------------------------------------------------

print '<<<<< CREATING Index - "topic_ind" >>>>>'
go 

create unique clustered index topic_ind 
on ndaybook.dbo.topic(code)
with index_compression = none 
on 'daybook_seg' 
go 




create view dtla as  select * from dtl  where security <= "3";

create view dtlb as  select * from dtl ;

create view dtlhlda as  select * from dtlhld  where security <= "3";

create view dtlhldb as  select * from dtlhld;

create view headera  (doc_id, doc_class, gpo, issue_date, title, security,  first_page, last_page,  note,  sys_code00, sys_code01, sys_code02, sys_code03,  sys_text00, sys_text01, sys_text02, sys_text03,  stand00, stand01, stand02, subjt00, subjt01, subjt02,  topic_code00, topic_code01, topic_text00, topic_text01) as
select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  "0",  d0.sys_code, d1.sys_code, d2.sys_code, d3.sys_code,  d0.sys_text, d1.sys_text, d2.sys_text, d3.sys_text,  d0.stand, d1.stand, d2.stand, d0.subjt, d1.subjt, d2.subjt,  d0.topic_code, d1.topic_code, t0.text, t1.text from  
topic as t0 right outer join dtl as d0 on t0.code = d0.topic_code
inner JOIN
topic as t1 right outer join dtl as d1 on t1.code = d1.topic_code
inner JOIN
dtl as d2 inner join dtl as d3 right outer join master as m on d2.doc_id = m.doc_id and d3.doc_id = m.doc_id
and
d0.doc_id = m.doc_id and
d1.doc_id = m.doc_id and
d0.dtl_seqno = 0 and
d1.dtl_seqno = 1 and
d2.dtl_seqno = 2 and
d3.dtl_seqno = 3 and
m.security <= "3";

create view headerb  (doc_id, doc_class, gpo, issue_date, title, security,  first_page, last_page,  note,  sys_code00, sys_code01, sys_code02, sys_code03,  sys_text00, sys_text01, sys_text02, sys_text03,  stand00, stand01, stand02, subjt00, subjt01, subjt02,  topic_code00, topic_code01, topic_text00, topic_text01) as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page,  m.last_page,  "0",  d0.sys_code, d1.sys_code, d2.sys_code, d3.sys_code,  d0.sys_text, d1.sys_text, d2.sys_text, d3.sys_text,  d0.stand, d1.stand, d2.stand, d0.subjt, d1.subjt, d2.subjt,  d0.topic_code, d1.topic_code, t0.text, t1.text from topic as t0 right outer join dtl as d0 on t0.code = d0.topic_code
inner JOIN
topic as t1 right outer join dtl as d1 on t1.code = d1.topic_code
inner JOIN
dtl as d2 inner join dtl as d3 right outer join master as m on d2.doc_id = m.doc_id and d3.doc_id = m.doc_id
and
d0.doc_id = m.doc_id and
d1.doc_id = m.doc_id and
d0.dtl_seqno = 0 and
d1.dtl_seqno = 1 and
d2.dtl_seqno = 2 and
d3.dtl_seqno = 3;

create view mastera as  select * from master  where security <= "3";

create view masterb as  select * from master;

create view msthlda as  select * from msthld  where security <= "3";

create view msthldb as  select * from msthld;

create view prmidx as select m.doc_id doc_id, m.doc_class doc_class, m.gpo gpo, m.title title,  d.sys_code sys_code00, m.security security, m.oper oper, m.trtype trtype,  m.doc_frozen doc_frozen from master as m, dtl as d where d.doc_id = m.doc_id and d.dtl_seqno = 0;

create view prmidxa as select m.doc_id doc_id, m.doc_class doc_class, m.gpo gpo, m.title title,  d.sys_code sys_code00, m.security security, m.doc_frozen doc_frozen from master as m, dtl as d where d.doc_id = m.doc_id and d.dtl_seqno = 0 and m.security <= "3";

create view prmidxb as select m.doc_id doc_id, m.doc_class doc_class, m.gpo gpo, m.title title,  d.sys_code sys_code00, m.security security, m.doc_frozen doc_frozen from master as m, dtl as d where d.doc_id = m.doc_id and d.dtl_seqno = 0;

create view tempa  (doc_id, doc_class, gpo, issue_date, title, security,  first_page, last_page,  note,  sys_code00, sys_code01, sys_code02, sys_code03,  sys_text00, sys_text01, sys_text02, sys_text03,  stand00, stand01, stand02, subjt00, subjt01, subjt02,  topic_code00, topic_code01, topic_text00, topic_text01) as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page,  m.last_page,  "0",  d0.sys_code, d1.sys_code, d2.sys_code, d3.sys_code,  d0.sys_text, d1.sys_text, d2.sys_text, d3.sys_text,  d0.stand, d1.stand, d2.stand, d0.subjt, d1.subjt, d2.subjt,  d0.topic_code, d1.topic_code, t0.text, t1.text from  
topic as t0 right outer join dtlhld as d0 on t0.code = d0.topic_code
inner join
topic as t1 right outer join dtlhld as d1 on t1.code = d1.topic_code
inner join
dtlhld as d2 inner join dtlhld as d3 right outer join msthld as m on
d0.doc_id = m.doc_id and d1.doc_id = m.doc_id and 
d2.doc_id = m.doc_id and d3.doc_id = m.doc_id and  
d0.dtl_seqno = 0 and d1.dtl_seqno = 1 and 
d2.dtl_seqno = 2 and d3.dtl_seqno = 3 and  
m.security <= "3" and m.trtype = "A";

create view tempb  (doc_id, doc_class, gpo, issue_date, title, security,  first_page, last_page,  note,  sys_code00, sys_code01, sys_code02, sys_code03,  sys_text00, sys_text01, sys_text02, sys_text03,  stand00, stand01, stand02, subjt00, subjt01, subjt02,  topic_code00, topic_code01, topic_text00, topic_text01) as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page,  m.last_page,  "0",  d0.sys_code, d1.sys_code, d2.sys_code, d3.sys_code,  d0.sys_text, d1.sys_text, d2.sys_text, d3.sys_text,  d0.stand, d1.stand, d2.stand, d0.subjt, d1.subjt, d2.subjt,  d0.topic_code, d1.topic_code, t0.text, t1.text 
from  
topic as t0 right outer join dtlhld as d0 on t0.code = d0.topic_code
inner join
topic as t1 right outer join dtlhld as d1 on t1.code = d1.topic_code
inner join
dtlhld as d2 inner join dtlhld as d3 right outer join msthld as m on
d0.doc_id = m.doc_id and d1.doc_id = m.doc_id and 
d2.doc_id = m.doc_id and d3.doc_id = m.doc_id and  
d0.dtl_seqno = 0 and d1.dtl_seqno = 1 and 
d2.dtl_seqno = 2 and d3.dtl_seqno = 3 and  
m.trtype = "A";

create view tmpidx as select m.doc_id, m.doc_class, m.gpo, m.title, d.sys_code as sys_code00, m.security, m.oper, m.trtype from msthld as m, dtlhld as d where d.doc_id = m.doc_id and d.dtl_seqno = 0;

create view tmpidxa as select m.doc_id, m.doc_class, m.gpo, m.title, d.sys_code as sys_code00, m.security, m.oper,  m.trtype from msthld as m, dtlhld as d where d.doc_id = m.doc_id and d.dtl_seqno = 0 and m.security <= "3" and m.trtype = "A";

create view tmpidxb as select doc_id = m.doc_id, doc_class = m.doc_class, gpo =m.gpo, title = m.title, sys_code00 = d.sys_code, security = m.security, oper = m.oper, trtype = m.trtype from msthld as m, dtlhld as d where d.doc_id = m.doc_id and d.dtl_seqno = 0 and m.trtype = "A";

create view tophlda (code, security, text, gen, indent, display)  as select tophld.*,  indent + text  from tophld where security <="3";

create view tophldb (code, security, text, gen, indent, display)  as select tophld.*,  indent + text  from tophld;

create view topica as select * from topic where security <="3";

create view topicb as select * from topic;

create table temp_tbl (doc_id char(11) null, doc_class char(3) null, title varchar(35) null);

create table ahc_subset (doc_id char(11) not null, note char(1) not null);

create index ahc_subset_ind on ahc_subset(doc_id, note);

create view ahc_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ahc_subset s where  m.doc_id = s.doc_id


CREATE USER 'ahc'@'%' IDENTIFIED BY 'NdEx:@h6J:jI'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ahc_subset TO 'ahc'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ald_subset (doc_id char(11) not null, note char(1) not null);

create index ald_subset_ind on ald_subset(doc_id, note);

create view ald_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ald_subset s where  m.doc_id = s.doc_id


CREATE USER 'ald'@'%' IDENTIFIED BY 'N1r]yI0?qK)i'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ald_subset TO 'ald'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ap__subset (doc_id char(11) not null, note char(1) not null);

create index ap__subset_ind on ap__subset(doc_id, note);

create view ap__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ap__subset s where  m.doc_id = s.doc_id


CREATE USER 'ap_'@'%' IDENTIFIED BY 'rq7|[{Fs/0k,'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ap__subset TO 'ap_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table bal_subset (doc_id char(11) not null, note char(1) not null);

create index bal_subset_ind on bal_subset(doc_id, note);

create view bal_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, bal_subset s where  m.doc_id = s.doc_id


CREATE USER 'bal'@'%' IDENTIFIED BY '5/@(!C8-e^.J'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON bal_subset TO 'bal'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table bmd_subset (doc_id char(11) not null, note char(1) not null);

create index bmd_subset_ind on bmd_subset(doc_id, note);

create view bmd_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, bmd_subset s where  m.doc_id = s.doc_id


CREATE USER 'bmd'@'%' IDENTIFIED BY 'TL,Lu5Mj&a:>'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON bmd_subset TO 'bmd'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table brj_subset (doc_id char(11) not null, note char(1) not null);

create index brj_subset_ind on brj_subset(doc_id, note);

create view brj_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, brj_subset s where  m.doc_id = s.doc_id


CREATE USER 'brj'@'%' IDENTIFIED BY '@MMGn*#RgNJE'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON brj_subset TO 'brj'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table bsn_subset (doc_id char(11) not null, note char(1) not null);

create index bsn_subset_ind on bsn_subset(doc_id, note);

create view bsn_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, bsn_subset s where  m.doc_id = s.doc_id


CREATE USER 'bsn'@'%' IDENTIFIED BY 'Sp6]Lh6AM@jA'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON bsn_subset TO 'bsn'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table cbs_subset (doc_id char(11) not null, note char(1) not null);

create index cbs_subset_ind on cbs_subset(doc_id, note);

create view cbs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, cbs_subset s where  m.doc_id = s.doc_id


CREATE USER 'cbs'@'%' IDENTIFIED BY 'aS]_.jvN#G^D'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON cbs_subset TO 'cbs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table chi_subset (doc_id char(11) not null, note char(1) not null);

create index chi_subset_ind on chi_subset(doc_id, note);

create view chi_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, chi_subset s where  m.doc_id = s.doc_id


CREATE USER 'chi'@'%' IDENTIFIED BY 'M5BJE{!Wphx^'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON chi_subset TO 'chi'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table cjo_subset (doc_id char(11) not null, note char(1) not null);

create index cjo_subset_ind on cjo_subset(doc_id, note);

create view cjo_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, cjo_subset s where  m.doc_id = s.doc_id


CREATE USER 'cjo'@'%' IDENTIFIED BY 'z?xTOJ:CI#;;'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON cjo_subset TO 'cjo'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table cjw_subset (doc_id char(11) not null, note char(1) not null);

create index cjw_subset_ind on cjw_subset(doc_id, note);

create view cjw_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, cjw_subset s where  m.doc_id = s.doc_id


CREATE USER 'cjw'@'%' IDENTIFIED BY '6i)1u,Tn+}OM'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON cjw_subset TO 'cjw'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table cj__subset (doc_id char(11) not null, note char(1) not null);

create index cj__subset_ind on cj__subset(doc_id, note);

create view cj__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, cj__subset s where  m.doc_id = s.doc_id


CREATE USER 'cj_'@'%' IDENTIFIED BY 'Fm-)R7c<)w<~'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON cj__subset TO 'cj_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table crr_subset (doc_id char(11) not null, note char(1) not null);

create index crr_subset_ind on crr_subset(doc_id, note);

create view crr_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, crr_subset s where  m.doc_id = s.doc_id


CREATE USER 'crr'@'%' IDENTIFIED BY '+W;1/:OF7)f^'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON crr_subset TO 'crr'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table csn_subset (doc_id char(11) not null, note char(1) not null);

create index csn_subset_ind on csn_subset(doc_id, note);

create view csn_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, csn_subset s where  m.doc_id = s.doc_id


CREATE USER 'csn'@'%' IDENTIFIED BY '>MW=5UsN~HQ#'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON csn_subset TO 'csn'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table das_subset (doc_id char(11) not null, note char(1) not null);

create index das_subset_ind on das_subset(doc_id, note);

create view das_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, das_subset s where  m.doc_id = s.doc_id


CREATE USER 'das'@'%' IDENTIFIED BY 'BR_SYlGIZ3@!'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON das_subset TO 'das'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dc__subset (doc_id char(11) not null, note char(1) not null);

create index dc__subset_ind on dc__subset(doc_id, note);

create view dc__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dc__subset s where  m.doc_id = s.doc_id


CREATE USER 'dc_'@'%' IDENTIFIED BY 'X<c]CK;[2.=1'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON dc__subset TO 'dc_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ddg_subset (doc_id char(11) not null, note char(1) not null);

create index ddg_subset_ind on ddg_subset(doc_id, note);

create view ddg_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ddg_subset s where  m.doc_id = s.doc_id


CREATE USER 'ddg'@'%' IDENTIFIED BY '(+;4i1{Nc(2}'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ddg_subset TO 'ddg'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dhf_subset (doc_id char(11) not null, note char(1) not null);

create index dhf_subset_ind on dhf_subset(doc_id, note);

create view dhf_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dhf_subset s where  m.doc_id = s.doc_id


CREATE USER 'dhf'@'%' IDENTIFIED BY 'g)!eR{tXxQ2n'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON dhf_subset TO 'dhf'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dhs_subset (doc_id char(11) not null, note char(1) not null);

create index dhs_subset_ind on dhs_subset(doc_id, note);

create view dhs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dhs_subset s where  m.doc_id = s.doc_id


CREATE USER 'dhs'@'%' IDENTIFIED BY '93;Y5p^+2yU]'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON dhs_subset TO 'dhs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dms_subset (doc_id char(11) not null, note char(1) not null);

create index dms_subset_ind on dms_subset(doc_id, note);

create view dms_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dms_subset s where  m.doc_id = s.doc_id


CREATE USER 'dms'@'%' IDENTIFIED BY 'RK3uh3P)rAV:'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON dms_subset TO 'dms'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dns_subset (doc_id char(11) not null, note char(1) not null);

create index dns_subset_ind on dns_subset(doc_id, note);

create view dns_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dns_subset s where  m.doc_id = s.doc_id


CREATE USER 'dns'@'%' IDENTIFIED BY '6.?{D0oAX,B0'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON dns_subset TO 'dns'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dss_subset (doc_id char(11) not null, note char(1) not null);

create index dss_subset_ind on dss_subset(doc_id, note);

create view dss_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dss_subset s where  m.doc_id = s.doc_id


CREATE USER 'dss'@'%' IDENTIFIED BY '_IUXVZe2HfcR'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON dss_subset TO 'dss'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dvb_subset (doc_id char(11) not null, note char(1) not null);

create index dvb_subset_ind on dvb_subset(doc_id, note);

create view dvb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dvb_subset s where  m.doc_id = s.doc_id


CREATE USER 'dvb'@'%' IDENTIFIED BY 'ROj@jyNah#^~'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON dvb_subset TO 'dvb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ecb_subset (doc_id char(11) not null, note char(1) not null);

create index ecb_subset_ind on ecb_subset(doc_id, note);

create view ecb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ecb_subset s where  m.doc_id = s.doc_id


CREATE USER 'ecb'@'%' IDENTIFIED BY 'y[AvcE./fA@m'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ecb_subset TO 'ecb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ews_subset (doc_id char(11) not null, note char(1) not null);

create index ews_subset_ind on ews_subset(doc_id, note);

create view ews_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ews_subset s where  m.doc_id = s.doc_id


CREATE USER 'ews'@'%' IDENTIFIED BY '?aEmRWgX~SwL'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ews_subset TO 'ews'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table fej_subset (doc_id char(11) not null, note char(1) not null);

create index fej_subset_ind on fej_subset(doc_id, note);

create view fej_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, fej_subset s where  m.doc_id = s.doc_id


CREATE USER 'fej'@'%' IDENTIFIED BY 'R*#Y/FwP~F@Z'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON fej_subset TO 'fej'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table fhb_subset (doc_id char(11) not null, note char(1) not null);

create index fhb_subset_ind on fhb_subset(doc_id, note);

create view fhb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, fhb_subset s where  m.doc_id = s.doc_id


CREATE USER 'fhb'@'%' IDENTIFIED BY 'Fh|p<irQ!Nen'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON fhb_subset TO 'fhb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ggr_subset (doc_id char(11) not null, note char(1) not null);

create index ggr_subset_ind on ggr_subset(doc_id, note);

create view ggr_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ggr_subset s where  m.doc_id = s.doc_id


CREATE USER 'ggr'@'%' IDENTIFIED BY 'wrv(Ab>/Fxp7'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ggr_subset TO 'ggr'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ggs_subset (doc_id char(11) not null, note char(1) not null);

create index ggs_subset_ind on ggs_subset(doc_id, note);

create view ggs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ggs_subset s where  m.doc_id = s.doc_id


CREATE USER 'ggs'@'%' IDENTIFIED BY '8zd_2.=^@C~2'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ggs_subset TO 'ggs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ghs_subset (doc_id char(11) not null, note char(1) not null);

create index ghs_subset_ind on ghs_subset(doc_id, note);

create view ghs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ghs_subset s where  m.doc_id = s.doc_id


CREATE USER 'ghs'@'%' IDENTIFIED BY 'tZL?e0j[2hi:'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ghs_subset TO 'ghs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table gmr_subset (doc_id char(11) not null, note char(1) not null);

create index gmr_subset_ind on gmr_subset(doc_id, note);

create view gmr_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, gmr_subset s where  m.doc_id = s.doc_id


CREATE USER 'gmr'@'%' IDENTIFIED BY '/Ic=iQJhy8U+'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON gmr_subset TO 'gmr'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table grc_subset (doc_id char(11) not null, note char(1) not null);

create index grc_subset_ind on grc_subset(doc_id, note);

create view grc_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, grc_subset s where  m.doc_id = s.doc_id


CREATE USER 'grc'@'%' IDENTIFIED BY 'd*@g?3/z6?s='; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON grc_subset TO 'grc'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table idl_subset (doc_id char(11) not null, note char(1) not null);

create index idl_subset_ind on idl_subset(doc_id, note);

create view idl_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, idl_subset s where  m.doc_id = s.doc_id


CREATE USER 'idl'@'%' IDENTIFIED BY 'x|}z5Jk;NnB>'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON idl_subset TO 'idl'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table if__subset (doc_id char(11) not null, note char(1) not null);

create index if__subset_ind on if__subset(doc_id, note);

create view if__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, if__subset s where  m.doc_id = s.doc_id


CREATE USER 'if_'@'%' IDENTIFIED BY '+yA?ViYcM/WS'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON if__subset TO 'if_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table jba_subset (doc_id char(11) not null, note char(1) not null);

create index jba_subset_ind on jba_subset(doc_id, note);

create view jba_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, jba_subset s where  m.doc_id = s.doc_id


CREATE USER 'jba'@'%' IDENTIFIED BY 'L#tm1H+!;fP='; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON jba_subset TO 'jba'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table jlh_subset (doc_id char(11) not null, note char(1) not null);

create index jlh_subset_ind on jlh_subset(doc_id, note);

create view jlh_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, jlh_subset s where  m.doc_id = s.doc_id


CREATE USER 'jlh'@'%' IDENTIFIED BY 'cae0pV1o8KBj'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON jlh_subset TO 'jlh'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table joe_subset (doc_id char(11) not null, note char(1) not null);

create index joe_subset_ind on joe_subset(doc_id, note);

create view joe_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, joe_subset s where  m.doc_id = s.doc_id


CREATE USER 'joe'@'%' IDENTIFIED BY '<NJ&1+-pK+W:'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON joe_subset TO 'joe'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table jph_subset (doc_id char(11) not null, note char(1) not null);

create index jph_subset_ind on jph_subset(doc_id, note);

create view jph_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, jph_subset s where  m.doc_id = s.doc_id


CREATE USER 'jph'@'%' IDENTIFIED BY 'pKX61|mI;w*r'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON jph_subset TO 'jph'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table js__subset (doc_id char(11) not null, note char(1) not null);

create index js__subset_ind on js__subset(doc_id, note);

create view js__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, js__subset s where  m.doc_id = s.doc_id


CREATE USER 'js_'@'%' IDENTIFIED BY 'fd;DMUP@k2Xy'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON js__subset TO 'js_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table jws_subset (doc_id char(11) not null, note char(1) not null);

create index jws_subset_ind on jws_subset(doc_id, note);

create view jws_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, jws_subset s where  m.doc_id = s.doc_id


CREATE USER 'jws'@'%' IDENTIFIED BY 'T<){r8W/,*Tp'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON jws_subset TO 'jws'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table kam_subset (doc_id char(11) not null, note char(1) not null);

create index kam_subset_ind on kam_subset(doc_id, note);

create view kam_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, kam_subset s where  m.doc_id = s.doc_id


CREATE USER 'kam'@'%' IDENTIFIED BY '*lLo@>/k_Z9o'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON kam_subset TO 'kam'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table krn_subset (doc_id char(11) not null, note char(1) not null);

create index krn_subset_ind on krn_subset(doc_id, note);

create view krn_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, krn_subset s where  m.doc_id = s.doc_id


CREATE USER 'krn'@'%' IDENTIFIED BY 'izgifT25W~1|'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON krn_subset TO 'krn'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table lsw_subset (doc_id char(11) not null, note char(1) not null);

create index lsw_subset_ind on lsw_subset(doc_id, note);

create view lsw_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, lsw_subset s where  m.doc_id = s.doc_id


CREATE USER 'lsw'@'%' IDENTIFIED BY 'c/A903S/M:{J'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON lsw_subset TO 'lsw'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mcs_subset (doc_id char(11) not null, note char(1) not null);

create index mcs_subset_ind on mcs_subset(doc_id, note);

create view mcs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mcs_subset s where  m.doc_id = s.doc_id


CREATE USER 'mcs'@'%' IDENTIFIED BY '_mnKIC3FN3~/'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON mcs_subset TO 'mcs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mgf_subset (doc_id char(11) not null, note char(1) not null);

create index mgf_subset_ind on mgf_subset(doc_id, note);

create view mgf_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mgf_subset s where  m.doc_id = s.doc_id


CREATE USER 'mgf'@'%' IDENTIFIED BY '+5E,8IP14kR<'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON mgf_subset TO 'mgf'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mgm_subset (doc_id char(11) not null, note char(1) not null);

create index mgm_subset_ind on mgm_subset(doc_id, note);

create view mgm_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mgm_subset s where  m.doc_id = s.doc_id


CREATE USER 'mgm'@'%' IDENTIFIED BY 'VVXm;47/^C-4'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON mgm_subset TO 'mgm'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mjb_subset (doc_id char(11) not null, note char(1) not null);

create index mjb_subset_ind on mjb_subset(doc_id, note);

create view mjb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mjb_subset s where  m.doc_id = s.doc_id


CREATE USER 'mjb'@'%' IDENTIFIED BY '-h:{MPt5+Wx^'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON mjb_subset TO 'mjb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mjf_subset (doc_id char(11) not null, note char(1) not null);

create index mjf_subset_ind on mjf_subset(doc_id, note);

create view mjf_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mjf_subset s where  m.doc_id = s.doc_id


CREATE USER 'mjf'@'%' IDENTIFIED BY 'Gd7C<pNwW*U8'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON mjf_subset TO 'mjf'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table moe_subset (doc_id char(11) not null, note char(1) not null);

create index moe_subset_ind on moe_subset(doc_id, note);

create view moe_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, moe_subset s where  m.doc_id = s.doc_id


CREATE USER 'moe'@'%' IDENTIFIED BY 'k!mV{.F[}k,Q'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON moe_subset TO 'moe'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mpb_subset (doc_id char(11) not null, note char(1) not null);

create index mpb_subset_ind on mpb_subset(doc_id, note);

create view mpb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mpb_subset s where  m.doc_id = s.doc_id


CREATE USER 'mpb'@'%' IDENTIFIED BY '&J(YjGv>9fK-'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON mpb_subset TO 'mpb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mtl_subset (doc_id char(11) not null, note char(1) not null);

create index mtl_subset_ind on mtl_subset(doc_id, note);

create view mtl_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mtl_subset s where  m.doc_id = s.doc_id


CREATE USER 'mtl'@'%' IDENTIFIED BY 'j(wj7t@fB}WP'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON mtl_subset TO 'mtl'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ncs_subset (doc_id char(11) not null, note char(1) not null);

create index ncs_subset_ind on ncs_subset(doc_id, note);

create view ncs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ncs_subset s where  m.doc_id = s.doc_id


CREATE USER 'ncs'@'%' IDENTIFIED BY 'KDRZzh=ZJ_El'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ncs_subset TO 'ncs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table nct_subset (doc_id char(11) not null, note char(1) not null);

create index nct_subset_ind on nct_subset(doc_id, note);

create view nct_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, nct_subset s where  m.doc_id = s.doc_id


CREATE USER 'nct'@'%' IDENTIFIED BY '1Y8t^#1SHq-='; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON nct_subset TO 'nct'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table nj__subset (doc_id char(11) not null, note char(1) not null);

create index nj__subset_ind on nj__subset(doc_id, note);

create view nj__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, nj__subset s where  m.doc_id = s.doc_id


CREATE USER 'nj_'@'%' IDENTIFIED BY 'N(!-4V8zD3[#'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON nj__subset TO 'nj_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table pds_subset (doc_id char(11) not null, note char(1) not null);

create index pds_subset_ind on pds_subset(doc_id, note);

create view pds_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, pds_subset s where  m.doc_id = s.doc_id


CREATE USER 'pds'@'%' IDENTIFIED BY 'SB]=5)UICEOe'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON pds_subset TO 'pds'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table psk_subset (doc_id char(11) not null, note char(1) not null);

create index psk_subset_ind on psk_subset(doc_id, note);

create view psk_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, psk_subset s where  m.doc_id = s.doc_id


CREATE USER 'psk'@'%' IDENTIFIED BY 'v4Lf:N6_L9=-'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON psk_subset TO 'psk'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table psu_subset (doc_id char(11) not null, note char(1) not null);

create index psu_subset_ind on psu_subset(doc_id, note);

create view psu_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, psu_subset s where  m.doc_id = s.doc_id


CREATE USER 'psu'@'%' IDENTIFIED BY '01m1r@n#~A#t'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON psu_subset TO 'psu'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rbd_subset (doc_id char(11) not null, note char(1) not null);

create index rbd_subset_ind on rbd_subset(doc_id, note);

create view rbd_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rbd_subset s where  m.doc_id = s.doc_id


CREATE USER 'rbd'@'%' IDENTIFIED BY 'l>9ds:V8P&Ek'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON rbd_subset TO 'rbd'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ref_subset (doc_id char(11) not null, note char(1) not null);

create index ref_subset_ind on ref_subset(doc_id, note);

create view ref_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ref_subset s where  m.doc_id = s.doc_id


CREATE USER 'ref'@'%' IDENTIFIED BY '=|.nWgcx^e;('; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ref_subset TO 'ref'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rew_subset (doc_id char(11) not null, note char(1) not null);

create index rew_subset_ind on rew_subset(doc_id, note);

create view rew_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rew_subset s where  m.doc_id = s.doc_id


CREATE USER 'rew'@'%' IDENTIFIED BY 'Ty4tuU/?/H,E'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON rew_subset TO 'rew'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rfs_subset (doc_id char(11) not null, note char(1) not null);

create index rfs_subset_ind on rfs_subset(doc_id, note);

create view rfs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rfs_subset s where  m.doc_id = s.doc_id


CREATE USER 'rfs'@'%' IDENTIFIED BY 'f<aI!C8?Hmmz'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON rfs_subset TO 'rfs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rjs_subset (doc_id char(11) not null, note char(1) not null);

create index rjs_subset_ind on rjs_subset(doc_id, note);

create view rjs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rjs_subset s where  m.doc_id = s.doc_id


CREATE USER 'rjs'@'%' IDENTIFIED BY 'G,IYo]bI{Fzs'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON rjs_subset TO 'rjs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rlb_subset (doc_id char(11) not null, note char(1) not null);

create index rlb_subset_ind on rlb_subset(doc_id, note);

create view rlb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rlb_subset s where  m.doc_id = s.doc_id


CREATE USER 'rlb'@'%' IDENTIFIED BY '(9f-]dzbCYKK'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON rlb_subset TO 'rlb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rmc_subset (doc_id char(11) not null, note char(1) not null);

create index rmc_subset_ind on rmc_subset(doc_id, note);

create view rmc_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rmc_subset s where  m.doc_id = s.doc_id


CREATE USER 'rmc'@'%' IDENTIFIED BY 'mbW0_uljYxX>'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON rmc_subset TO 'rmc'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ron_subset (doc_id char(11) not null, note char(1) not null);

create index ron_subset_ind on ron_subset(doc_id, note);

create view ron_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ron_subset s where  m.doc_id = s.doc_id


CREATE USER 'ron'@'%' IDENTIFIED BY 'HI^^,RnLZ#*A'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ron_subset TO 'ron'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rsb_subset (doc_id char(11) not null, note char(1) not null);

create index rsb_subset_ind on rsb_subset(doc_id, note);

create view rsb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rsb_subset s where  m.doc_id = s.doc_id


CREATE USER 'rsb'@'%' IDENTIFIED BY 'XM!9Xp]?4CKQ'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON rsb_subset TO 'rsb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rsm_subset (doc_id char(11) not null, note char(1) not null);

create index rsm_subset_ind on rsm_subset(doc_id, note);

create view rsm_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rsm_subset s where  m.doc_id = s.doc_id


CREATE USER 'rsm'@'%' IDENTIFIED BY 'b.KY]{2SDZi5'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON rsm_subset TO 'rsm'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rss_subset (doc_id char(11) not null, note char(1) not null);

create index rss_subset_ind on rss_subset(doc_id, note);

create view rss_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rss_subset s where  m.doc_id = s.doc_id


CREATE USER 'rss'@'%' IDENTIFIED BY 'EiwZsuUe)/mt'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON rss_subset TO 'rss'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sb__subset (doc_id char(11) not null, note char(1) not null);

create index sb__subset_ind on sb__subset(doc_id, note);

create view sb__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sb__subset s where  m.doc_id = s.doc_id


CREATE USER 'sb_'@'%' IDENTIFIED BY '=W]mWFmb_1,n'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON sb__subset TO 'sb_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sea_subset (doc_id char(11) not null, note char(1) not null);

create index sea_subset_ind on sea_subset(doc_id, note);

create view sea_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sea_subset s where  m.doc_id = s.doc_id


CREATE USER 'sea'@'%' IDENTIFIED BY 'Bl3lCg;T!{P3'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON sea_subset TO 'sea'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table se__subset (doc_id char(11) not null, note char(1) not null);

create index se__subset_ind on se__subset(doc_id, note);

create view se__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, se__subset s where  m.doc_id = s.doc_id


CREATE USER 'se_'@'%' IDENTIFIED BY '?aUrP#W-1Nag'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON se__subset TO 'se_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sfn_subset (doc_id char(11) not null, note char(1) not null);

create index sfn_subset_ind on sfn_subset(doc_id, note);

create view sfn_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sfn_subset s where  m.doc_id = s.doc_id


CREATE USER 'sfn'@'%' IDENTIFIED BY 'vGUQdC2^p2Qz'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON sfn_subset TO 'sfn'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sjk_subset (doc_id char(11) not null, note char(1) not null);

create index sjk_subset_ind on sjk_subset(doc_id, note);

create view sjk_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sjk_subset s where  m.doc_id = s.doc_id


CREATE USER 'sjk'@'%' IDENTIFIED BY '-6v*9#{<lX>2'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON sjk_subset TO 'sjk'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table skl_subset (doc_id char(11) not null, note char(1) not null);

create index skl_subset_ind on skl_subset(doc_id, note);

create view skl_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, skl_subset s where  m.doc_id = s.doc_id


CREATE USER 'skl'@'%' IDENTIFIED BY 'z;}}g9/+_1BX'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON skl_subset TO 'skl'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table skr_subset (doc_id char(11) not null, note char(1) not null);

create index skr_subset_ind on skr_subset(doc_id, note);

create view skr_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, skr_subset s where  m.doc_id = s.doc_id


CREATE USER 'skr'@'%' IDENTIFIED BY 'LxRkE2_AbUZQ'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON skr_subset TO 'skr'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table skv_subset (doc_id char(11) not null, note char(1) not null);

create index skv_subset_ind on skv_subset(doc_id, note);

create view skv_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, skv_subset s where  m.doc_id = s.doc_id


CREATE USER 'skv'@'%' IDENTIFIED BY '2N7]{[So)viO'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON skv_subset TO 'skv'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table smt_subset (doc_id char(11) not null, note char(1) not null);

create index smt_subset_ind on smt_subset(doc_id, note);

create view smt_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, smt_subset s where  m.doc_id = s.doc_id


CREATE USER 'smt'@'%' IDENTIFIED BY 'YcNldZOjT<-Z'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON smt_subset TO 'smt'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table spd_subset (doc_id char(11) not null, note char(1) not null);

create index spd_subset_ind on spd_subset(doc_id, note);

create view spd_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, spd_subset s where  m.doc_id = s.doc_id


CREATE USER 'spd'@'%' IDENTIFIED BY '&3p0n)?roeE}'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON spd_subset TO 'spd'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table spm_subset (doc_id char(11) not null, note char(1) not null);

create index spm_subset_ind on spm_subset(doc_id, note);

create view spm_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, spm_subset s where  m.doc_id = s.doc_id


CREATE USER 'spm'@'%' IDENTIFIED BY 'DwUgRP.,9L_t'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON spm_subset TO 'spm'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sre_subset (doc_id char(11) not null, note char(1) not null);

create index sre_subset_ind on sre_subset(doc_id, note);

create view sre_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sre_subset s where  m.doc_id = s.doc_id


CREATE USER 'sre'@'%' IDENTIFIED BY '7y|6AR=jSzCo'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON sre_subset TO 'sre'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ssd_subset (doc_id char(11) not null, note char(1) not null);

create index ssd_subset_ind on ssd_subset(doc_id, note);

create view ssd_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ssd_subset s where  m.doc_id = s.doc_id


CREATE USER 'ssd'@'%' IDENTIFIED BY '{|Tgx-|(4bPg'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ssd_subset TO 'ssd'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ssu_subset (doc_id char(11) not null, note char(1) not null);

create index ssu_subset_ind on ssu_subset(doc_id, note);

create view ssu_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ssu_subset s where  m.doc_id = s.doc_id


CREATE USER 'ssu'@'%' IDENTIFIED BY 'J#+=BS<{@VQ:'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ssu_subset TO 'ssu'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ssw_subset (doc_id char(11) not null, note char(1) not null);

create index ssw_subset_ind on ssw_subset(doc_id, note);

create view ssw_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ssw_subset s where  m.doc_id = s.doc_id


CREATE USER 'ssw'@'%' IDENTIFIED BY ':(PmqEmyP)G('; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ssw_subset TO 'ssw'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table tnr_subset (doc_id char(11) not null, note char(1) not null);

create index tnr_subset_ind on tnr_subset(doc_id, note);

create view tnr_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, tnr_subset s where  m.doc_id = s.doc_id


CREATE USER 'tnr'@'%' IDENTIFIED BY '^8a[gY6#]eTP'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON tnr_subset TO 'tnr'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table vfr_subset (doc_id char(11) not null, note char(1) not null);

create index vfr_subset_ind on vfr_subset(doc_id, note);

create view vfr_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, vfr_subset s where  m.doc_id = s.doc_id


CREATE USER 'vfr'@'%' IDENTIFIED BY 'U#^jAqjGmiV,'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON vfr_subset TO 'vfr'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table wcj_subset (doc_id char(11) not null, note char(1) not null);

create index wcj_subset_ind on wcj_subset(doc_id, note);

create view wcj_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, wcj_subset s where  m.doc_id = s.doc_id


CREATE USER 'wcj'@'%' IDENTIFIED BY 'g8KXjZ[,#WC_'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON wcj_subset TO 'wcj'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table wdc_subset (doc_id char(11) not null, note char(1) not null);

create index wdc_subset_ind on wdc_subset(doc_id, note);

create view wdc_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, wdc_subset s where  m.doc_id = s.doc_id


CREATE USER 'wdc'@'%' IDENTIFIED BY '4.Ll9B/HN[;('; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON wdc_subset TO 'wdc'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table wfw_subset (doc_id char(11) not null, note char(1) not null);

create index wfw_subset_ind on wfw_subset(doc_id, note);

create view wfw_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, wfw_subset s where  m.doc_id = s.doc_id


CREATE USER 'wfw'@'%' IDENTIFIED BY '}?V_couF|0;w'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON wfw_subset TO 'wfw'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table wie_subset (doc_id char(11) not null, note char(1) not null);

create index wie_subset_ind on wie_subset(doc_id, note);

create view wie_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, wie_subset s where  m.doc_id = s.doc_id


CREATE USER 'wie'@'%' IDENTIFIED BY '!rp^kR;b62/j'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON wie_subset TO 'wie'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ws__subset (doc_id char(11) not null, note char(1) not null);

create index ws__subset_ind on ws__subset(doc_id, note);

create view ws__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ws__subset s where  m.doc_id = s.doc_id


CREATE USER 'ws_'@'%' IDENTIFIED BY '~+6DgOge^4Pq'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ws__subset TO 'ws_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sys_subset (doc_id char(11) not null, note char(1) not null);

create index sys_subset_ind on sys_subset(doc_id, note);

create view sys_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sys_subset s where  m.doc_id = s.doc_id


CREATE USER 'sys'@'%' IDENTIFIED BY '~v63]qN]#.R5'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON sys_subset TO 'sys'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table lmd_subset (doc_id char(11) not null, note char(1) not null);

create index lmd_subset_ind on lmd_subset(doc_id, note);

create view lmd_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, lmd_subset s where  m.doc_id = s.doc_id


CREATE USER 'lmd'@'%' IDENTIFIED BY 's1Xk;eS^BWBB'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON lmd_subset TO 'lmd'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table tla_subset (doc_id char(11) not null, note char(1) not null);

create index tla_subset_ind on tla_subset(doc_id, note);

create view tla_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, tla_subset s where  m.doc_id = s.doc_id


CREATE USER 'tla'@'%' IDENTIFIED BY 'KD~A(:v[i3fP'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON tla_subset TO 'tla'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ib__subset (doc_id char(11) not null, note char(1) not null);

create index ib__subset_ind on ib__subset(doc_id, note);

create view ib__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ib__subset s where  m.doc_id = s.doc_id


CREATE USER 'ib_'@'%' IDENTIFIED BY 'D]?ANt7/?<[u'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ib__subset TO 'ib_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table pb__subset (doc_id char(11) not null, note char(1) not null);

create index pb__subset_ind on pb__subset(doc_id, note);

create view pb__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, pb__subset s where  m.doc_id = s.doc_id


CREATE USER 'pb_'@'%' IDENTIFIED BY 'eU/&aWT8/U&#'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON pb__subset TO 'pb_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rma_subset (doc_id char(11) not null, note char(1) not null);

create index rma_subset_ind on rma_subset(doc_id, note);

create view rma_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rma_subset s where  m.doc_id = s.doc_id


CREATE USER 'rma'@'%' IDENTIFIED BY 'GvhC[3gOaEOa'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON rma_subset TO 'rma'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sek_subset (doc_id char(11) not null, note char(1) not null);

create index sek_subset_ind on sek_subset(doc_id, note);

create view sek_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sek_subset s where  m.doc_id = s.doc_id


CREATE USER 'sek'@'%' IDENTIFIED BY '?NyuOq4JUp89'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON sek_subset TO 'sek'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table agg_subset (doc_id char(11) not null, note char(1) not null);

create index agg_subset_ind on agg_subset(doc_id, note);

create view agg_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, agg_subset s where  m.doc_id = s.doc_id


CREATE USER 'agg'@'%' IDENTIFIED BY 'd&fqNp:j6zkL'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON agg_subset TO 'agg'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table pbg_subset (doc_id char(11) not null, note char(1) not null);

create index pbg_subset_ind on pbg_subset(doc_id, note);

create view pbg_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, pbg_subset s where  m.doc_id = s.doc_id


CREATE USER 'pbg'@'%' IDENTIFIED BY 'iahj~NYX(x(*'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON pbg_subset TO 'pbg'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table gh__subset (doc_id char(11) not null, note char(1) not null);

create index gh__subset_ind on gh__subset(doc_id, note);

create view gh__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, gh__subset s where  m.doc_id = s.doc_id


CREATE USER 'gh_'@'%' IDENTIFIED BY 'fVn9.WaWZa5r'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON gh__subset TO 'gh_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mob_subset (doc_id char(11) not null, note char(1) not null);

create index mob_subset_ind on mob_subset(doc_id, note);

create view mob_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mob_subset s where  m.doc_id = s.doc_id


CREATE USER 'mob'@'%' IDENTIFIED BY 'a@Z8nPYWy>tp'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON mob_subset TO 'mob'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table bmb_subset (doc_id char(11) not null, note char(1) not null);

create index bmb_subset_ind on bmb_subset(doc_id, note);

create view bmb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, bmb_subset s where  m.doc_id = s.doc_id


CREATE USER 'bmb'@'%' IDENTIFIED BY 'HP)E&Y:2RQg)'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON bmb_subset TO 'bmb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rwb_subset (doc_id char(11) not null, note char(1) not null);

create index rwb_subset_ind on rwb_subset(doc_id, note);

create view rwb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rwb_subset s where  m.doc_id = s.doc_id


CREATE USER 'rwb'@'%' IDENTIFIED BY 'Y1/busNf&,uW'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON rwb_subset TO 'rwb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table kh__subset (doc_id char(11) not null, note char(1) not null);

create index kh__subset_ind on kh__subset(doc_id, note);

create view kh__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, kh__subset s where  m.doc_id = s.doc_id


CREATE USER 'kh_'@'%' IDENTIFIED BY 'z#P!+OSg#6qd'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON kh__subset TO 'kh_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table cmc_subset (doc_id char(11) not null, note char(1) not null);

create index cmc_subset_ind on cmc_subset(doc_id, note);

create view cmc_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, cmc_subset s where  m.doc_id = s.doc_id


CREATE USER 'cmc'@'%' IDENTIFIED BY 'JH7s095?hhgw'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON cmc_subset TO 'cmc'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table det_subset (doc_id char(11) not null, note char(1) not null);

create index det_subset_ind on det_subset(doc_id, note);

create view det_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, det_subset s where  m.doc_id = s.doc_id


CREATE USER 'det'@'%' IDENTIFIED BY '37:/2Kn[9@n;'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON det_subset TO 'det'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table gas_subset (doc_id char(11) not null, note char(1) not null);

create index gas_subset_ind on gas_subset(doc_id, note);

create view gas_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, gas_subset s where  m.doc_id = s.doc_id


CREATE USER 'gas'@'%' IDENTIFIED BY '*_Ow4XJdZBz:'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON gas_subset TO 'gas'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table drr_subset (doc_id char(11) not null, note char(1) not null);

create index drr_subset_ind on drr_subset(doc_id, note);

create view drr_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, drr_subset s where  m.doc_id = s.doc_id


CREATE USER 'drr'@'%' IDENTIFIED BY '_^YK~D893^J{'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON drr_subset TO 'drr'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table hwv_subset (doc_id char(11) not null, note char(1) not null);

create index hwv_subset_ind on hwv_subset(doc_id, note);

create view hwv_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, hwv_subset s where  m.doc_id = s.doc_id


CREATE USER 'hwv'@'%' IDENTIFIED BY 'YEv.)kP_9e/P'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON hwv_subset TO 'hwv'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table lbv_subset (doc_id char(11) not null, note char(1) not null);

create index lbv_subset_ind on lbv_subset(doc_id, note);

create view lbv_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, lbv_subset s where  m.doc_id = s.doc_id


CREATE USER 'lbv'@'%' IDENTIFIED BY 'b[0sGFN*M;+7'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON lbv_subset TO 'lbv'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table tf__subset (doc_id char(11) not null, note char(1) not null);

create index tf__subset_ind on tf__subset(doc_id, note);

create view tf__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, tf__subset s where  m.doc_id = s.doc_id


CREATE USER 'tf_'@'%' IDENTIFIED BY '1n~Hcfvw1d>u'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON tf__subset TO 'tf_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table iam_subset (doc_id char(11) not null, note char(1) not null);

create index iam_subset_ind on iam_subset(doc_id, note);

create view iam_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, iam_subset s where  m.doc_id = s.doc_id


CREATE USER 'iam'@'%' IDENTIFIED BY 'CV(J2dn*gbhG'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON iam_subset TO 'iam'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table cmh_subset (doc_id char(11) not null, note char(1) not null);

create index cmh_subset_ind on cmh_subset(doc_id, note);

create view cmh_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, cmh_subset s where  m.doc_id = s.doc_id


CREATE USER 'cmh'@'%' IDENTIFIED BY 't*?|Qb}O]_Su'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON cmh_subset TO 'cmh'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sam_subset (doc_id char(11) not null, note char(1) not null);

create index sam_subset_ind on sam_subset(doc_id, note);

create view sam_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sam_subset s where  m.doc_id = s.doc_id


CREATE USER 'sam'@'%' IDENTIFIED BY ']-+8rJm~O0U>'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON sam_subset TO 'sam'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rsk_subset (doc_id char(11) not null, note char(1) not null);

create index rsk_subset_ind on rsk_subset(doc_id, note);

create view rsk_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rsk_subset s where  m.doc_id = s.doc_id


CREATE USER 'rsk'@'%' IDENTIFIED BY 'bc#kB}<!wFq5'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON rsk_subset TO 'rsk'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table bd__subset (doc_id char(11) not null, note char(1) not null);

create index bd__subset_ind on bd__subset(doc_id, note);

create view bd__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, bd__subset s where  m.doc_id = s.doc_id


CREATE USER 'bd_'@'%' IDENTIFIED BY '.igL^?G_UTm7'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON bd__subset TO 'bd_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mty_subset (doc_id char(11) not null, note char(1) not null);

create index mty_subset_ind on mty_subset(doc_id, note);

create view mty_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mty_subset s where  m.doc_id = s.doc_id


CREATE USER 'mty'@'%' IDENTIFIED BY 'yP)Bi~+cS_uw'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON mty_subset TO 'mty'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sey_subset (doc_id char(11) not null, note char(1) not null);

create index sey_subset_ind on sey_subset(doc_id, note);

create view sey_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sey_subset s where  m.doc_id = s.doc_id


CREATE USER 'sey'@'%' IDENTIFIED BY '+UqOx0+yq_Cp'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON sey_subset TO 'sey'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sfy_subset (doc_id char(11) not null, note char(1) not null);

create index sfy_subset_ind on sfy_subset(doc_id, note);

create view sfy_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sfy_subset s where  m.doc_id = s.doc_id


CREATE USER 'sfy'@'%' IDENTIFIED BY 'F=<j^(QYuF*H'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON sfy_subset TO 'sfy'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table wdy_subset (doc_id char(11) not null, note char(1) not null);

create index wdy_subset_ind on wdy_subset(doc_id, note);

create view wdy_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, wdy_subset s where  m.doc_id = s.doc_id


CREATE USER 'wdy'@'%' IDENTIFIED BY 'FlvO[1UYhoXj'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON wdy_subset TO 'wdy'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sj__subset (doc_id char(11) not null, note char(1) not null);

create index sj__subset_ind on sj__subset(doc_id, note);

create view sj__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sj__subset s where  m.doc_id = s.doc_id


CREATE USER 'sj_'@'%' IDENTIFIED BY '{Du2nw2QfRzN'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON sj__subset TO 'sj_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ars_subset (doc_id char(11) not null, note char(1) not null);

create index ars_subset_ind on ars_subset(doc_id, note);

create view ars_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ars_subset s where  m.doc_id = s.doc_id


CREATE USER 'ars'@'%' IDENTIFIED BY '{(N+TUe=mq+.'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ars_subset TO 'ars'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table edg_subset (doc_id char(11) not null, note char(1) not null);

create index edg_subset_ind on edg_subset(doc_id, note);

create view edg_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, edg_subset s where  m.doc_id = s.doc_id


CREATE USER 'edg'@'%' IDENTIFIED BY 'v-EZci!:Qi&K'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON edg_subset TO 'edg'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table aky_subset (doc_id char(11) not null, note char(1) not null);

create index aky_subset_ind on aky_subset(doc_id, note);

create view aky_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, aky_subset s where  m.doc_id = s.doc_id


CREATE USER 'aky'@'%' IDENTIFIED BY 'M]<)0sA<*#L!'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON aky_subset TO 'aky'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dmy_subset (doc_id char(11) not null, note char(1) not null);

create index dmy_subset_ind on dmy_subset(doc_id, note);

create view dmy_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dmy_subset s where  m.doc_id = s.doc_id


CREATE USER 'dmy'@'%' IDENTIFIED BY 'W)xZ?C~b&zj*'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON dmy_subset TO 'dmy'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table jc__subset (doc_id char(11) not null, note char(1) not null);

create index jc__subset_ind on jc__subset(doc_id, note);

create view jc__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, jc__subset s where  m.doc_id = s.doc_id


CREATE USER 'jc_'@'%' IDENTIFIED BY ')rSMLpWG|!4_'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON jc__subset TO 'jc_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ccc_subset (doc_id char(11) not null, note char(1) not null);

create index ccc_subset_ind on ccc_subset(doc_id, note);

create view ccc_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ccc_subset s where  m.doc_id = s.doc_id


CREATE USER 'ccc'@'%' IDENTIFIED BY 'tB9mm^9aC3o?'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON ccc_subset TO 'ccc'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mab_subset (doc_id char(11) not null, note char(1) not null);

create index mab_subset_ind on mab_subset(doc_id, note);

create view mab_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mab_subset s where  m.doc_id = s.doc_id


CREATE USER 'mab'@'%' IDENTIFIED BY '|?T&Pos,PI*}'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON mab_subset TO 'mab'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table bsm_subset (doc_id char(11) not null, note char(1) not null);

create index bsm_subset_ind on bsm_subset(doc_id, note);

create view bsm_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, bsm_subset s where  m.doc_id = s.doc_id


CREATE USER 'bsm'@'%' IDENTIFIED BY 'DEj}S]W,#er2'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON bsm_subset TO 'bsm'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dea_subset (doc_id char(11) not null, note char(1) not null);

create index dea_subset_ind on dea_subset(doc_id, note);

create view dea_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dea_subset s where  m.doc_id = s.doc_id


CREATE USER 'dea'@'%' IDENTIFIED BY 'l5GyK86FT&;9'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON dea_subset TO 'dea'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mlo_subset (doc_id char(11) not null, note char(1) not null);

create index mlo_subset_ind on mlo_subset(doc_id, note);

create view mlo_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mlo_subset s where  m.doc_id = s.doc_id


CREATE USER 'mlo'@'%' IDENTIFIED BY 'p-C|cyu@lSD{'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON mlo_subset TO 'mlo'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table tja_subset (doc_id char(11) not null, note char(1) not null);

create index tja_subset_ind on tja_subset(doc_id, note);

create view tja_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, tja_subset s where  m.doc_id = s.doc_id


CREATE USER 'tja'@'%' IDENTIFIED BY 'VqF4:!Wm9jmY'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON tja_subset TO 'tja'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dta_subset (doc_id char(11) not null, note char(1) not null);

create index dta_subset_ind on dta_subset(doc_id, note);

create view dta_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dta_subset s where  m.doc_id = s.doc_id


CREATE USER 'dta'@'%' IDENTIFIED BY '=MxC^D?BnF5y'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON dta_subset TO 'dta'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table pvl_subset (doc_id char(11) not null, note char(1) not null);

create index pvl_subset_ind on pvl_subset(doc_id, note);

create view pvl_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, pvl_subset s where  m.doc_id = s.doc_id


CREATE USER 'pvl'@'%' IDENTIFIED BY '0ns0z?n*]xQx'; GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON pvl_subset TO 'pvl'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;


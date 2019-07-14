create table ahc_subset (doc_id char(11) not null, note char(1) not null);

create index ahc_subset_ind on ahc_subset(doc_id, note);

create view ahc_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ahc_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ahc'@'%' IDENTIFIED BY '(^(BTw@='; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ahc_subset TO 'ahc'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ald_subset (doc_id char(11) not null, note char(1) not null);

create index ald_subset_ind on ald_subset(doc_id, note);

create view ald_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ald_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ald'@'%' IDENTIFIED BY '-E4[!2S0'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ald_subset TO 'ald'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ap__subset (doc_id char(11) not null, note char(1) not null);

create index ap__subset_ind on ap__subset(doc_id, note);

create view ap__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ap__subset s where  m.doc_id = s.doc_id;


CREATE USER 'ap_'@'%' IDENTIFIED BY 'ywjf6*sy'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ap__subset TO 'ap_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table bal_subset (doc_id char(11) not null, note char(1) not null);

create index bal_subset_ind on bal_subset(doc_id, note);

create view bal_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, bal_subset s where  m.doc_id = s.doc_id;


CREATE USER 'bal'@'%' IDENTIFIED BY 'W8l09PNE'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.bal_subset TO 'bal'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table bmd_subset (doc_id char(11) not null, note char(1) not null);

create index bmd_subset_ind on bmd_subset(doc_id, note);

create view bmd_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, bmd_subset s where  m.doc_id = s.doc_id;


CREATE USER 'bmd'@'%' IDENTIFIED BY '+|{yc>Xa'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.bmd_subset TO 'bmd'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table brj_subset (doc_id char(11) not null, note char(1) not null);

create index brj_subset_ind on brj_subset(doc_id, note);

create view brj_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, brj_subset s where  m.doc_id = s.doc_id;


CREATE USER 'brj'@'%' IDENTIFIED BY '(}-HRjyY'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.brj_subset TO 'brj'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table bsn_subset (doc_id char(11) not null, note char(1) not null);

create index bsn_subset_ind on bsn_subset(doc_id, note);

create view bsn_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, bsn_subset s where  m.doc_id = s.doc_id;


CREATE USER 'bsn'@'%' IDENTIFIED BY 'Gwj4W3Em'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.bsn_subset TO 'bsn'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table cbs_subset (doc_id char(11) not null, note char(1) not null);

create index cbs_subset_ind on cbs_subset(doc_id, note);

create view cbs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, cbs_subset s where  m.doc_id = s.doc_id;


CREATE USER 'cbs'@'%' IDENTIFIED BY '//n;ZgLI'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.cbs_subset TO 'cbs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table chi_subset (doc_id char(11) not null, note char(1) not null);

create index chi_subset_ind on chi_subset(doc_id, note);

create view chi_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, chi_subset s where  m.doc_id = s.doc_id;


CREATE USER 'chi'@'%' IDENTIFIED BY ',Y:6Au^x'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.chi_subset TO 'chi'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table cjo_subset (doc_id char(11) not null, note char(1) not null);

create index cjo_subset_ind on cjo_subset(doc_id, note);

create view cjo_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, cjo_subset s where  m.doc_id = s.doc_id;


CREATE USER 'cjo'@'%' IDENTIFIED BY 'JoN@hH)y'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.cjo_subset TO 'cjo'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table cjw_subset (doc_id char(11) not null, note char(1) not null);

create index cjw_subset_ind on cjw_subset(doc_id, note);

create view cjw_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, cjw_subset s where  m.doc_id = s.doc_id;


CREATE USER 'cjw'@'%' IDENTIFIED BY 'BSfI>U>w'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.cjw_subset TO 'cjw'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table cj__subset (doc_id char(11) not null, note char(1) not null);

create index cj__subset_ind on cj__subset(doc_id, note);

create view cj__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, cj__subset s where  m.doc_id = s.doc_id;


CREATE USER 'cj_'@'%' IDENTIFIED BY ']Wk_1Z>,'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.cj__subset TO 'cj_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table crr_subset (doc_id char(11) not null, note char(1) not null);

create index crr_subset_ind on crr_subset(doc_id, note);

create view crr_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, crr_subset s where  m.doc_id = s.doc_id;


CREATE USER 'crr'@'%' IDENTIFIED BY 'nugtP&47'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.crr_subset TO 'crr'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table csn_subset (doc_id char(11) not null, note char(1) not null);

create index csn_subset_ind on csn_subset(doc_id, note);

create view csn_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, csn_subset s where  m.doc_id = s.doc_id;


CREATE USER 'csn'@'%' IDENTIFIED BY 'U>q?M?v;'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.csn_subset TO 'csn'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table das_subset (doc_id char(11) not null, note char(1) not null);

create index das_subset_ind on das_subset(doc_id, note);

create view das_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, das_subset s where  m.doc_id = s.doc_id;


CREATE USER 'das'@'%' IDENTIFIED BY 'BY*j9IZ['; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.das_subset TO 'das'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dc__subset (doc_id char(11) not null, note char(1) not null);

create index dc__subset_ind on dc__subset(doc_id, note);

create view dc__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dc__subset s where  m.doc_id = s.doc_id;


CREATE USER 'dc_'@'%' IDENTIFIED BY 'Jeue;?X/'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.dc__subset TO 'dc_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ddg_subset (doc_id char(11) not null, note char(1) not null);

create index ddg_subset_ind on ddg_subset(doc_id, note);

create view ddg_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ddg_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ddg'@'%' IDENTIFIED BY '-]xuJM{>'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ddg_subset TO 'ddg'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dhf_subset (doc_id char(11) not null, note char(1) not null);

create index dhf_subset_ind on dhf_subset(doc_id, note);

create view dhf_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dhf_subset s where  m.doc_id = s.doc_id;


CREATE USER 'dhf'@'%' IDENTIFIED BY 'fVRP;1/t'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.dhf_subset TO 'dhf'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dhs_subset (doc_id char(11) not null, note char(1) not null);

create index dhs_subset_ind on dhs_subset(doc_id, note);

create view dhs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dhs_subset s where  m.doc_id = s.doc_id;


CREATE USER 'dhs'@'%' IDENTIFIED BY '<_D_MXMl'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.dhs_subset TO 'dhs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dms_subset (doc_id char(11) not null, note char(1) not null);

create index dms_subset_ind on dms_subset(doc_id, note);

create view dms_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dms_subset s where  m.doc_id = s.doc_id;


CREATE USER 'dms'@'%' IDENTIFIED BY 'lZS>5::_'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.dms_subset TO 'dms'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dns_subset (doc_id char(11) not null, note char(1) not null);

create index dns_subset_ind on dns_subset(doc_id, note);

create view dns_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dns_subset s where  m.doc_id = s.doc_id;


CREATE USER 'dns'@'%' IDENTIFIED BY 'A|^wQM/S'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.dns_subset TO 'dns'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dss_subset (doc_id char(11) not null, note char(1) not null);

create index dss_subset_ind on dss_subset(doc_id, note);

create view dss_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dss_subset s where  m.doc_id = s.doc_id;


CREATE USER 'dss'@'%' IDENTIFIED BY '8TUO6{)L'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.dss_subset TO 'dss'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dvb_subset (doc_id char(11) not null, note char(1) not null);

create index dvb_subset_ind on dvb_subset(doc_id, note);

create view dvb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dvb_subset s where  m.doc_id = s.doc_id;


CREATE USER 'dvb'@'%' IDENTIFIED BY 'k*J;.cyt'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.dvb_subset TO 'dvb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ecb_subset (doc_id char(11) not null, note char(1) not null);

create index ecb_subset_ind on ecb_subset(doc_id, note);

create view ecb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ecb_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ecb'@'%' IDENTIFIED BY 'az&es*{,'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ecb_subset TO 'ecb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ews_subset (doc_id char(11) not null, note char(1) not null);

create index ews_subset_ind on ews_subset(doc_id, note);

create view ews_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ews_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ews'@'%' IDENTIFIED BY 'o]2TJ@kD'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ews_subset TO 'ews'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table fej_subset (doc_id char(11) not null, note char(1) not null);

create index fej_subset_ind on fej_subset(doc_id, note);

create view fej_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, fej_subset s where  m.doc_id = s.doc_id;


CREATE USER 'fej'@'%' IDENTIFIED BY '-,nT+(5R'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.fej_subset TO 'fej'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table fhb_subset (doc_id char(11) not null, note char(1) not null);

create index fhb_subset_ind on fhb_subset(doc_id, note);

create view fhb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, fhb_subset s where  m.doc_id = s.doc_id;


CREATE USER 'fhb'@'%' IDENTIFIED BY '_DTK(Fkp'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.fhb_subset TO 'fhb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ggr_subset (doc_id char(11) not null, note char(1) not null);

create index ggr_subset_ind on ggr_subset(doc_id, note);

create view ggr_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ggr_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ggr'@'%' IDENTIFIED BY ';=ak].jf'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ggr_subset TO 'ggr'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ggs_subset (doc_id char(11) not null, note char(1) not null);

create index ggs_subset_ind on ggs_subset(doc_id, note);

create view ggs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ggs_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ggs'@'%' IDENTIFIED BY 'p<U6F)F>'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ggs_subset TO 'ggs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ghs_subset (doc_id char(11) not null, note char(1) not null);

create index ghs_subset_ind on ghs_subset(doc_id, note);

create view ghs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ghs_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ghs'@'%' IDENTIFIED BY 'Fv)mZncu'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ghs_subset TO 'ghs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table gmr_subset (doc_id char(11) not null, note char(1) not null);

create index gmr_subset_ind on gmr_subset(doc_id, note);

create view gmr_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, gmr_subset s where  m.doc_id = s.doc_id;


CREATE USER 'gmr'@'%' IDENTIFIED BY 'VWBh#^U/'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.gmr_subset TO 'gmr'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table grc_subset (doc_id char(11) not null, note char(1) not null);

create index grc_subset_ind on grc_subset(doc_id, note);

create view grc_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, grc_subset s where  m.doc_id = s.doc_id;


CREATE USER 'grc'@'%' IDENTIFIED BY 'u;hpZgE2'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.grc_subset TO 'grc'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table idl_subset (doc_id char(11) not null, note char(1) not null);

create index idl_subset_ind on idl_subset(doc_id, note);

create view idl_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, idl_subset s where  m.doc_id = s.doc_id;


CREATE USER 'idl'@'%' IDENTIFIED BY '!tG8+jQl'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.idl_subset TO 'idl'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table if__subset (doc_id char(11) not null, note char(1) not null);

create index if__subset_ind on if__subset(doc_id, note);

create view if__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, if__subset s where  m.doc_id = s.doc_id;


CREATE USER 'if_'@'%' IDENTIFIED BY 'rv@X)5G8'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.if__subset TO 'if_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table jba_subset (doc_id char(11) not null, note char(1) not null);

create index jba_subset_ind on jba_subset(doc_id, note);

create view jba_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, jba_subset s where  m.doc_id = s.doc_id;


CREATE USER 'jba'@'%' IDENTIFIED BY 'm{^IN&vd'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.jba_subset TO 'jba'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table jlh_subset (doc_id char(11) not null, note char(1) not null);

create index jlh_subset_ind on jlh_subset(doc_id, note);

create view jlh_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, jlh_subset s where  m.doc_id = s.doc_id;


CREATE USER 'jlh'@'%' IDENTIFIED BY ';aW6*c4~'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.jlh_subset TO 'jlh'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table joe_subset (doc_id char(11) not null, note char(1) not null);

create index joe_subset_ind on joe_subset(doc_id, note);

create view joe_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, joe_subset s where  m.doc_id = s.doc_id;


CREATE USER 'joe'@'%' IDENTIFIED BY '{yVBt|n^'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.joe_subset TO 'joe'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table jph_subset (doc_id char(11) not null, note char(1) not null);

create index jph_subset_ind on jph_subset(doc_id, note);

create view jph_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, jph_subset s where  m.doc_id = s.doc_id;


CREATE USER 'jph'@'%' IDENTIFIED BY '7lgYJA23'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.jph_subset TO 'jph'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table js__subset (doc_id char(11) not null, note char(1) not null);

create index js__subset_ind on js__subset(doc_id, note);

create view js__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, js__subset s where  m.doc_id = s.doc_id;


CREATE USER 'js_'@'%' IDENTIFIED BY '{_IUNCq*'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.js__subset TO 'js_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table jws_subset (doc_id char(11) not null, note char(1) not null);

create index jws_subset_ind on jws_subset(doc_id, note);

create view jws_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, jws_subset s where  m.doc_id = s.doc_id;


CREATE USER 'jws'@'%' IDENTIFIED BY 'Nz4oOcrr'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.jws_subset TO 'jws'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table kam_subset (doc_id char(11) not null, note char(1) not null);

create index kam_subset_ind on kam_subset(doc_id, note);

create view kam_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, kam_subset s where  m.doc_id = s.doc_id;


CREATE USER 'kam'@'%' IDENTIFIED BY '1H-8Nh<v'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.kam_subset TO 'kam'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table krn_subset (doc_id char(11) not null, note char(1) not null);

create index krn_subset_ind on krn_subset(doc_id, note);

create view krn_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, krn_subset s where  m.doc_id = s.doc_id;


CREATE USER 'krn'@'%' IDENTIFIED BY 's+}3Ys@@'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.krn_subset TO 'krn'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table lsw_subset (doc_id char(11) not null, note char(1) not null);

create index lsw_subset_ind on lsw_subset(doc_id, note);

create view lsw_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, lsw_subset s where  m.doc_id = s.doc_id;


CREATE USER 'lsw'@'%' IDENTIFIED BY '3ZSzLWxT'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.lsw_subset TO 'lsw'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mcs_subset (doc_id char(11) not null, note char(1) not null);

create index mcs_subset_ind on mcs_subset(doc_id, note);

create view mcs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mcs_subset s where  m.doc_id = s.doc_id;


CREATE USER 'mcs'@'%' IDENTIFIED BY '|Ob[>q^H'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.mcs_subset TO 'mcs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mgf_subset (doc_id char(11) not null, note char(1) not null);

create index mgf_subset_ind on mgf_subset(doc_id, note);

create view mgf_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mgf_subset s where  m.doc_id = s.doc_id;


CREATE USER 'mgf'@'%' IDENTIFIED BY '{8pJJXH,'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.mgf_subset TO 'mgf'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mgm_subset (doc_id char(11) not null, note char(1) not null);

create index mgm_subset_ind on mgm_subset(doc_id, note);

create view mgm_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mgm_subset s where  m.doc_id = s.doc_id;


CREATE USER 'mgm'@'%' IDENTIFIED BY '?,if-7@r'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.mgm_subset TO 'mgm'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mjb_subset (doc_id char(11) not null, note char(1) not null);

create index mjb_subset_ind on mjb_subset(doc_id, note);

create view mjb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mjb_subset s where  m.doc_id = s.doc_id;


CREATE USER 'mjb'@'%' IDENTIFIED BY 'b(Wf|}}n'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.mjb_subset TO 'mjb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mjf_subset (doc_id char(11) not null, note char(1) not null);

create index mjf_subset_ind on mjf_subset(doc_id, note);

create view mjf_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mjf_subset s where  m.doc_id = s.doc_id;


CREATE USER 'mjf'@'%' IDENTIFIED BY 'PD@Hx{0t'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.mjf_subset TO 'mjf'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table moe_subset (doc_id char(11) not null, note char(1) not null);

create index moe_subset_ind on moe_subset(doc_id, note);

create view moe_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, moe_subset s where  m.doc_id = s.doc_id;


CREATE USER 'moe'@'%' IDENTIFIED BY 'S!z7.^Is'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.moe_subset TO 'moe'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mpb_subset (doc_id char(11) not null, note char(1) not null);

create index mpb_subset_ind on mpb_subset(doc_id, note);

create view mpb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mpb_subset s where  m.doc_id = s.doc_id;


CREATE USER 'mpb'@'%' IDENTIFIED BY '6RCqH},a'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.mpb_subset TO 'mpb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mtl_subset (doc_id char(11) not null, note char(1) not null);

create index mtl_subset_ind on mtl_subset(doc_id, note);

create view mtl_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mtl_subset s where  m.doc_id = s.doc_id;


CREATE USER 'mtl'@'%' IDENTIFIED BY ')gU-MFTH'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.mtl_subset TO 'mtl'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ncs_subset (doc_id char(11) not null, note char(1) not null);

create index ncs_subset_ind on ncs_subset(doc_id, note);

create view ncs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ncs_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ncs'@'%' IDENTIFIED BY 'Au}U0oAk'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ncs_subset TO 'ncs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table nct_subset (doc_id char(11) not null, note char(1) not null);

create index nct_subset_ind on nct_subset(doc_id, note);

create view nct_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, nct_subset s where  m.doc_id = s.doc_id;


CREATE USER 'nct'@'%' IDENTIFIED BY 'n)zxvdL3'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.nct_subset TO 'nct'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table nj__subset (doc_id char(11) not null, note char(1) not null);

create index nj__subset_ind on nj__subset(doc_id, note);

create view nj__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, nj__subset s where  m.doc_id = s.doc_id;


CREATE USER 'nj_'@'%' IDENTIFIED BY '.F5n|dvI'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.nj__subset TO 'nj_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table pds_subset (doc_id char(11) not null, note char(1) not null);

create index pds_subset_ind on pds_subset(doc_id, note);

create view pds_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, pds_subset s where  m.doc_id = s.doc_id;


CREATE USER 'pds'@'%' IDENTIFIED BY '&(NrWvgP'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.pds_subset TO 'pds'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table psk_subset (doc_id char(11) not null, note char(1) not null);

create index psk_subset_ind on psk_subset(doc_id, note);

create view psk_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, psk_subset s where  m.doc_id = s.doc_id;


CREATE USER 'psk'@'%' IDENTIFIED BY 'xM]v2gST'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.psk_subset TO 'psk'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table psu_subset (doc_id char(11) not null, note char(1) not null);

create index psu_subset_ind on psu_subset(doc_id, note);

create view psu_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, psu_subset s where  m.doc_id = s.doc_id;


CREATE USER 'psu'@'%' IDENTIFIED BY '(wYMiLS!'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.psu_subset TO 'psu'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rbd_subset (doc_id char(11) not null, note char(1) not null);

create index rbd_subset_ind on rbd_subset(doc_id, note);

create view rbd_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rbd_subset s where  m.doc_id = s.doc_id;


CREATE USER 'rbd'@'%' IDENTIFIED BY 'G&4V8Rtg'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.rbd_subset TO 'rbd'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ref_subset (doc_id char(11) not null, note char(1) not null);

create index ref_subset_ind on ref_subset(doc_id, note);

create view ref_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ref_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ref'@'%' IDENTIFIED BY '>M_&vSu@'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ref_subset TO 'ref'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rew_subset (doc_id char(11) not null, note char(1) not null);

create index rew_subset_ind on rew_subset(doc_id, note);

create view rew_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rew_subset s where  m.doc_id = s.doc_id;


CREATE USER 'rew'@'%' IDENTIFIED BY '7AWc,MJG'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.rew_subset TO 'rew'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rfs_subset (doc_id char(11) not null, note char(1) not null);

create index rfs_subset_ind on rfs_subset(doc_id, note);

create view rfs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rfs_subset s where  m.doc_id = s.doc_id;


CREATE USER 'rfs'@'%' IDENTIFIED BY 'Zgn?Vf=d'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.rfs_subset TO 'rfs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rjs_subset (doc_id char(11) not null, note char(1) not null);

create index rjs_subset_ind on rjs_subset(doc_id, note);

create view rjs_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rjs_subset s where  m.doc_id = s.doc_id;


CREATE USER 'rjs'@'%' IDENTIFIED BY 'rV61K-Wy'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.rjs_subset TO 'rjs'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rlb_subset (doc_id char(11) not null, note char(1) not null);

create index rlb_subset_ind on rlb_subset(doc_id, note);

create view rlb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rlb_subset s where  m.doc_id = s.doc_id;


CREATE USER 'rlb'@'%' IDENTIFIED BY 'RwT;I@aX'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.rlb_subset TO 'rlb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rmc_subset (doc_id char(11) not null, note char(1) not null);

create index rmc_subset_ind on rmc_subset(doc_id, note);

create view rmc_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rmc_subset s where  m.doc_id = s.doc_id;


CREATE USER 'rmc'@'%' IDENTIFIED BY 'G)^Hf@XJ'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.rmc_subset TO 'rmc'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ron_subset (doc_id char(11) not null, note char(1) not null);

create index ron_subset_ind on ron_subset(doc_id, note);

create view ron_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ron_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ron'@'%' IDENTIFIED BY '!A&w4cXD'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ron_subset TO 'ron'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rsb_subset (doc_id char(11) not null, note char(1) not null);

create index rsb_subset_ind on rsb_subset(doc_id, note);

create view rsb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rsb_subset s where  m.doc_id = s.doc_id;


CREATE USER 'rsb'@'%' IDENTIFIED BY 'l;}wi|cd'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.rsb_subset TO 'rsb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rsm_subset (doc_id char(11) not null, note char(1) not null);

create index rsm_subset_ind on rsm_subset(doc_id, note);

create view rsm_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rsm_subset s where  m.doc_id = s.doc_id;


CREATE USER 'rsm'@'%' IDENTIFIED BY 'u#{bYx<l'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.rsm_subset TO 'rsm'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rss_subset (doc_id char(11) not null, note char(1) not null);

create index rss_subset_ind on rss_subset(doc_id, note);

create view rss_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rss_subset s where  m.doc_id = s.doc_id;


CREATE USER 'rss'@'%' IDENTIFIED BY 'V=QRrM/f'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.rss_subset TO 'rss'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sb__subset (doc_id char(11) not null, note char(1) not null);

create index sb__subset_ind on sb__subset(doc_id, note);

create view sb__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sb__subset s where  m.doc_id = s.doc_id;


CREATE USER 'sb_'@'%' IDENTIFIED BY 'M2gZN2J='; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.sb__subset TO 'sb_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sea_subset (doc_id char(11) not null, note char(1) not null);

create index sea_subset_ind on sea_subset(doc_id, note);

create view sea_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sea_subset s where  m.doc_id = s.doc_id;


CREATE USER 'sea'@'%' IDENTIFIED BY 'y?XL@8;4'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.sea_subset TO 'sea'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table se__subset (doc_id char(11) not null, note char(1) not null);

create index se__subset_ind on se__subset(doc_id, note);

create view se__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, se__subset s where  m.doc_id = s.doc_id;


CREATE USER 'se_'@'%' IDENTIFIED BY 'Y/0pfp7x'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.se__subset TO 'se_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sfn_subset (doc_id char(11) not null, note char(1) not null);

create index sfn_subset_ind on sfn_subset(doc_id, note);

create view sfn_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sfn_subset s where  m.doc_id = s.doc_id;


CREATE USER 'sfn'@'%' IDENTIFIED BY ':H3DW^nW'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.sfn_subset TO 'sfn'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sjk_subset (doc_id char(11) not null, note char(1) not null);

create index sjk_subset_ind on sjk_subset(doc_id, note);

create view sjk_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sjk_subset s where  m.doc_id = s.doc_id;


CREATE USER 'sjk'@'%' IDENTIFIED BY '}?XRzBq{'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.sjk_subset TO 'sjk'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table skl_subset (doc_id char(11) not null, note char(1) not null);

create index skl_subset_ind on skl_subset(doc_id, note);

create view skl_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, skl_subset s where  m.doc_id = s.doc_id;


CREATE USER 'skl'@'%' IDENTIFIED BY 'X=9Q.~0v'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.skl_subset TO 'skl'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table skr_subset (doc_id char(11) not null, note char(1) not null);

create index skr_subset_ind on skr_subset(doc_id, note);

create view skr_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, skr_subset s where  m.doc_id = s.doc_id;


CREATE USER 'skr'@'%' IDENTIFIED BY '?D,AX~AP'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.skr_subset TO 'skr'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table skv_subset (doc_id char(11) not null, note char(1) not null);

create index skv_subset_ind on skv_subset(doc_id, note);

create view skv_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, skv_subset s where  m.doc_id = s.doc_id;


CREATE USER 'skv'@'%' IDENTIFIED BY 'X(tv;!&K'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.skv_subset TO 'skv'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table smt_subset (doc_id char(11) not null, note char(1) not null);

create index smt_subset_ind on smt_subset(doc_id, note);

create view smt_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, smt_subset s where  m.doc_id = s.doc_id;


CREATE USER 'smt'@'%' IDENTIFIED BY '<QuR=}bd'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.smt_subset TO 'smt'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table spd_subset (doc_id char(11) not null, note char(1) not null);

create index spd_subset_ind on spd_subset(doc_id, note);

create view spd_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, spd_subset s where  m.doc_id = s.doc_id;


CREATE USER 'spd'@'%' IDENTIFIED BY '?R>cie79'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.spd_subset TO 'spd'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table spm_subset (doc_id char(11) not null, note char(1) not null);

create index spm_subset_ind on spm_subset(doc_id, note);

create view spm_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, spm_subset s where  m.doc_id = s.doc_id;


CREATE USER 'spm'@'%' IDENTIFIED BY 'YA|fkJG6'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.spm_subset TO 'spm'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sre_subset (doc_id char(11) not null, note char(1) not null);

create index sre_subset_ind on sre_subset(doc_id, note);

create view sre_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sre_subset s where  m.doc_id = s.doc_id;


CREATE USER 'sre'@'%' IDENTIFIED BY 'NuI-gpm.'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.sre_subset TO 'sre'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ssd_subset (doc_id char(11) not null, note char(1) not null);

create index ssd_subset_ind on ssd_subset(doc_id, note);

create view ssd_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ssd_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ssd'@'%' IDENTIFIED BY 'pN1BHd_+'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ssd_subset TO 'ssd'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ssu_subset (doc_id char(11) not null, note char(1) not null);

create index ssu_subset_ind on ssu_subset(doc_id, note);

create view ssu_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ssu_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ssu'@'%' IDENTIFIED BY '*u(v!qo+'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ssu_subset TO 'ssu'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ssw_subset (doc_id char(11) not null, note char(1) not null);

create index ssw_subset_ind on ssw_subset(doc_id, note);

create view ssw_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ssw_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ssw'@'%' IDENTIFIED BY 'aOeiO8Z&'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ssw_subset TO 'ssw'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table tnr_subset (doc_id char(11) not null, note char(1) not null);

create index tnr_subset_ind on tnr_subset(doc_id, note);

create view tnr_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, tnr_subset s where  m.doc_id = s.doc_id;


CREATE USER 'tnr'@'%' IDENTIFIED BY 'GPbR~uU/'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.tnr_subset TO 'tnr'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table vfr_subset (doc_id char(11) not null, note char(1) not null);

create index vfr_subset_ind on vfr_subset(doc_id, note);

create view vfr_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, vfr_subset s where  m.doc_id = s.doc_id;


CREATE USER 'vfr'@'%' IDENTIFIED BY 'H&cD?|6~'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.vfr_subset TO 'vfr'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table wcj_subset (doc_id char(11) not null, note char(1) not null);

create index wcj_subset_ind on wcj_subset(doc_id, note);

create view wcj_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, wcj_subset s where  m.doc_id = s.doc_id;


CREATE USER 'wcj'@'%' IDENTIFIED BY 'CL;/A9KD'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.wcj_subset TO 'wcj'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table wdc_subset (doc_id char(11) not null, note char(1) not null);

create index wdc_subset_ind on wdc_subset(doc_id, note);

create view wdc_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, wdc_subset s where  m.doc_id = s.doc_id;


CREATE USER 'wdc'@'%' IDENTIFIED BY 'p[l<Z}4>'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.wdc_subset TO 'wdc'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table wfw_subset (doc_id char(11) not null, note char(1) not null);

create index wfw_subset_ind on wfw_subset(doc_id, note);

create view wfw_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, wfw_subset s where  m.doc_id = s.doc_id;


CREATE USER 'wfw'@'%' IDENTIFIED BY 'V!5Vg]OT'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.wfw_subset TO 'wfw'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table wie_subset (doc_id char(11) not null, note char(1) not null);

create index wie_subset_ind on wie_subset(doc_id, note);

create view wie_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, wie_subset s where  m.doc_id = s.doc_id;


CREATE USER 'wie'@'%' IDENTIFIED BY ':t30z9|F'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.wie_subset TO 'wie'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ws__subset (doc_id char(11) not null, note char(1) not null);

create index ws__subset_ind on ws__subset(doc_id, note);

create view ws__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ws__subset s where  m.doc_id = s.doc_id;


CREATE USER 'ws_'@'%' IDENTIFIED BY '#*P_0qhk'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ws__subset TO 'ws_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sys_subset (doc_id char(11) not null, note char(1) not null);

create index sys_subset_ind on sys_subset(doc_id, note);

create view sys_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sys_subset s where  m.doc_id = s.doc_id;


CREATE USER 'sys'@'%' IDENTIFIED BY 'iD0a2G6]'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.sys_subset TO 'sys'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table lmd_subset (doc_id char(11) not null, note char(1) not null);

create index lmd_subset_ind on lmd_subset(doc_id, note);

create view lmd_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, lmd_subset s where  m.doc_id = s.doc_id;


CREATE USER 'lmd'@'%' IDENTIFIED BY ';E6zYn(3'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.lmd_subset TO 'lmd'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table tla_subset (doc_id char(11) not null, note char(1) not null);

create index tla_subset_ind on tla_subset(doc_id, note);

create view tla_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, tla_subset s where  m.doc_id = s.doc_id;


CREATE USER 'tla'@'%' IDENTIFIED BY 'gj.6Tjcm'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.tla_subset TO 'tla'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ib__subset (doc_id char(11) not null, note char(1) not null);

create index ib__subset_ind on ib__subset(doc_id, note);

create view ib__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ib__subset s where  m.doc_id = s.doc_id;


CREATE USER 'ib_'@'%' IDENTIFIED BY '6WAr-|FZ'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ib__subset TO 'ib_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table pb__subset (doc_id char(11) not null, note char(1) not null);

create index pb__subset_ind on pb__subset(doc_id, note);

create view pb__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, pb__subset s where  m.doc_id = s.doc_id;


CREATE USER 'pb_'@'%' IDENTIFIED BY 'Tm:^GsWb'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.pb__subset TO 'pb_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rma_subset (doc_id char(11) not null, note char(1) not null);

create index rma_subset_ind on rma_subset(doc_id, note);

create view rma_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rma_subset s where  m.doc_id = s.doc_id;


CREATE USER 'rma'@'%' IDENTIFIED BY 'k8094mnO'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.rma_subset TO 'rma'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sek_subset (doc_id char(11) not null, note char(1) not null);

create index sek_subset_ind on sek_subset(doc_id, note);

create view sek_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sek_subset s where  m.doc_id = s.doc_id;


CREATE USER 'sek'@'%' IDENTIFIED BY '#Oba7q9s'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.sek_subset TO 'sek'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table agg_subset (doc_id char(11) not null, note char(1) not null);

create index agg_subset_ind on agg_subset(doc_id, note);

create view agg_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, agg_subset s where  m.doc_id = s.doc_id;


CREATE USER 'agg'@'%' IDENTIFIED BY 'ru5!/*5H'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.agg_subset TO 'agg'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table pbg_subset (doc_id char(11) not null, note char(1) not null);

create index pbg_subset_ind on pbg_subset(doc_id, note);

create view pbg_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, pbg_subset s where  m.doc_id = s.doc_id;


CREATE USER 'pbg'@'%' IDENTIFIED BY ':,]rOQr<'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.pbg_subset TO 'pbg'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table gh__subset (doc_id char(11) not null, note char(1) not null);

create index gh__subset_ind on gh__subset(doc_id, note);

create view gh__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, gh__subset s where  m.doc_id = s.doc_id;


CREATE USER 'gh_'@'%' IDENTIFIED BY '?@C>#z<y'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.gh__subset TO 'gh_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mob_subset (doc_id char(11) not null, note char(1) not null);

create index mob_subset_ind on mob_subset(doc_id, note);

create view mob_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mob_subset s where  m.doc_id = s.doc_id;


CREATE USER 'mob'@'%' IDENTIFIED BY 'p;L8]]CF'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.mob_subset TO 'mob'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table bmb_subset (doc_id char(11) not null, note char(1) not null);

create index bmb_subset_ind on bmb_subset(doc_id, note);

create view bmb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, bmb_subset s where  m.doc_id = s.doc_id;


CREATE USER 'bmb'@'%' IDENTIFIED BY '|9MD!.BW'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.bmb_subset TO 'bmb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rwb_subset (doc_id char(11) not null, note char(1) not null);

create index rwb_subset_ind on rwb_subset(doc_id, note);

create view rwb_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rwb_subset s where  m.doc_id = s.doc_id;


CREATE USER 'rwb'@'%' IDENTIFIED BY 'E_y#rzML'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.rwb_subset TO 'rwb'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table kh__subset (doc_id char(11) not null, note char(1) not null);

create index kh__subset_ind on kh__subset(doc_id, note);

create view kh__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, kh__subset s where  m.doc_id = s.doc_id;


CREATE USER 'kh_'@'%' IDENTIFIED BY 'o[^KeNV~'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.kh__subset TO 'kh_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table cmc_subset (doc_id char(11) not null, note char(1) not null);

create index cmc_subset_ind on cmc_subset(doc_id, note);

create view cmc_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, cmc_subset s where  m.doc_id = s.doc_id;


CREATE USER 'cmc'@'%' IDENTIFIED BY '8tMyrLWV'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.cmc_subset TO 'cmc'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table det_subset (doc_id char(11) not null, note char(1) not null);

create index det_subset_ind on det_subset(doc_id, note);

create view det_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, det_subset s where  m.doc_id = s.doc_id;


CREATE USER 'det'@'%' IDENTIFIED BY 'R1Ro3nq)'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.det_subset TO 'det'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table gas_subset (doc_id char(11) not null, note char(1) not null);

create index gas_subset_ind on gas_subset(doc_id, note);

create view gas_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, gas_subset s where  m.doc_id = s.doc_id;


CREATE USER 'gas'@'%' IDENTIFIED BY 'S~>+);d2'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.gas_subset TO 'gas'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table drr_subset (doc_id char(11) not null, note char(1) not null);

create index drr_subset_ind on drr_subset(doc_id, note);

create view drr_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, drr_subset s where  m.doc_id = s.doc_id;


CREATE USER 'drr'@'%' IDENTIFIED BY 'm&}}?8EL'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.drr_subset TO 'drr'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table hwv_subset (doc_id char(11) not null, note char(1) not null);

create index hwv_subset_ind on hwv_subset(doc_id, note);

create view hwv_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, hwv_subset s where  m.doc_id = s.doc_id;


CREATE USER 'hwv'@'%' IDENTIFIED BY '~YvWBMY)'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.hwv_subset TO 'hwv'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table lbv_subset (doc_id char(11) not null, note char(1) not null);

create index lbv_subset_ind on lbv_subset(doc_id, note);

create view lbv_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, lbv_subset s where  m.doc_id = s.doc_id;


CREATE USER 'lbv'@'%' IDENTIFIED BY ']J}5woC9'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.lbv_subset TO 'lbv'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table tf__subset (doc_id char(11) not null, note char(1) not null);

create index tf__subset_ind on tf__subset(doc_id, note);

create view tf__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, tf__subset s where  m.doc_id = s.doc_id;


CREATE USER 'tf_'@'%' IDENTIFIED BY 'ak3#<a-('; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.tf__subset TO 'tf_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table iam_subset (doc_id char(11) not null, note char(1) not null);

create index iam_subset_ind on iam_subset(doc_id, note);

create view iam_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, iam_subset s where  m.doc_id = s.doc_id;


CREATE USER 'iam'@'%' IDENTIFIED BY 'KNM?aSJQ'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.iam_subset TO 'iam'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table cmh_subset (doc_id char(11) not null, note char(1) not null);

create index cmh_subset_ind on cmh_subset(doc_id, note);

create view cmh_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, cmh_subset s where  m.doc_id = s.doc_id;


CREATE USER 'cmh'@'%' IDENTIFIED BY 'M.>Tr66J'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.cmh_subset TO 'cmh'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sam_subset (doc_id char(11) not null, note char(1) not null);

create index sam_subset_ind on sam_subset(doc_id, note);

create view sam_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sam_subset s where  m.doc_id = s.doc_id;


CREATE USER 'sam'@'%' IDENTIFIED BY 'wnPh69l]'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.sam_subset TO 'sam'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table rsk_subset (doc_id char(11) not null, note char(1) not null);

create index rsk_subset_ind on rsk_subset(doc_id, note);

create view rsk_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, rsk_subset s where  m.doc_id = s.doc_id;


CREATE USER 'rsk'@'%' IDENTIFIED BY '8)#vL*+5'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.rsk_subset TO 'rsk'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table bd__subset (doc_id char(11) not null, note char(1) not null);

create index bd__subset_ind on bd__subset(doc_id, note);

create view bd__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, bd__subset s where  m.doc_id = s.doc_id;


CREATE USER 'bd_'@'%' IDENTIFIED BY 'vXEA.1L^'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.bd__subset TO 'bd_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mty_subset (doc_id char(11) not null, note char(1) not null);

create index mty_subset_ind on mty_subset(doc_id, note);

create view mty_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mty_subset s where  m.doc_id = s.doc_id;


CREATE USER 'mty'@'%' IDENTIFIED BY 'N~s9j#a/'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.mty_subset TO 'mty'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sey_subset (doc_id char(11) not null, note char(1) not null);

create index sey_subset_ind on sey_subset(doc_id, note);

create view sey_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sey_subset s where  m.doc_id = s.doc_id;


CREATE USER 'sey'@'%' IDENTIFIED BY 'CM{[wh_['; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.sey_subset TO 'sey'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sfy_subset (doc_id char(11) not null, note char(1) not null);

create index sfy_subset_ind on sfy_subset(doc_id, note);

create view sfy_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sfy_subset s where  m.doc_id = s.doc_id;


CREATE USER 'sfy'@'%' IDENTIFIED BY '[xdonHcZ'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.sfy_subset TO 'sfy'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table wdy_subset (doc_id char(11) not null, note char(1) not null);

create index wdy_subset_ind on wdy_subset(doc_id, note);

create view wdy_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, wdy_subset s where  m.doc_id = s.doc_id;


CREATE USER 'wdy'@'%' IDENTIFIED BY 'F^?zr8X~'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.wdy_subset TO 'wdy'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table sj__subset (doc_id char(11) not null, note char(1) not null);

create index sj__subset_ind on sj__subset(doc_id, note);

create view sj__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, sj__subset s where  m.doc_id = s.doc_id;


CREATE USER 'sj_'@'%' IDENTIFIED BY 'CyQd(}ey'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.sj__subset TO 'sj_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ars_subset (doc_id char(11) not null, note char(1) not null);

create index ars_subset_ind on ars_subset(doc_id, note);

create view ars_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ars_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ars'@'%' IDENTIFIED BY '01t?24w&'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ars_subset TO 'ars'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table edg_subset (doc_id char(11) not null, note char(1) not null);

create index edg_subset_ind on edg_subset(doc_id, note);

create view edg_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, edg_subset s where  m.doc_id = s.doc_id;


CREATE USER 'edg'@'%' IDENTIFIED BY '1JLMfMm5'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.edg_subset TO 'edg'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table aky_subset (doc_id char(11) not null, note char(1) not null);

create index aky_subset_ind on aky_subset(doc_id, note);

create view aky_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, aky_subset s where  m.doc_id = s.doc_id;


CREATE USER 'aky'@'%' IDENTIFIED BY 'GIM:;C9.'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.aky_subset TO 'aky'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dmy_subset (doc_id char(11) not null, note char(1) not null);

create index dmy_subset_ind on dmy_subset(doc_id, note);

create view dmy_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dmy_subset s where  m.doc_id = s.doc_id;


CREATE USER 'dmy'@'%' IDENTIFIED BY 'Ev)-zk-U'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.dmy_subset TO 'dmy'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table jc__subset (doc_id char(11) not null, note char(1) not null);

create index jc__subset_ind on jc__subset(doc_id, note);

create view jc__full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, jc__subset s where  m.doc_id = s.doc_id;


CREATE USER 'jc_'@'%' IDENTIFIED BY ')/qJ|,d,'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.jc__subset TO 'jc_'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table ccc_subset (doc_id char(11) not null, note char(1) not null);

create index ccc_subset_ind on ccc_subset(doc_id, note);

create view ccc_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, ccc_subset s where  m.doc_id = s.doc_id;


CREATE USER 'ccc'@'%' IDENTIFIED BY '.NHoKKZH'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.ccc_subset TO 'ccc'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mab_subset (doc_id char(11) not null, note char(1) not null);

create index mab_subset_ind on mab_subset(doc_id, note);

create view mab_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mab_subset s where  m.doc_id = s.doc_id;


CREATE USER 'mab'@'%' IDENTIFIED BY 'lV10U)~>'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.mab_subset TO 'mab'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table bsm_subset (doc_id char(11) not null, note char(1) not null);

create index bsm_subset_ind on bsm_subset(doc_id, note);

create view bsm_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, bsm_subset s where  m.doc_id = s.doc_id;


CREATE USER 'bsm'@'%' IDENTIFIED BY '4ye*_lOU'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.bsm_subset TO 'bsm'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dea_subset (doc_id char(11) not null, note char(1) not null);

create index dea_subset_ind on dea_subset(doc_id, note);

create view dea_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dea_subset s where  m.doc_id = s.doc_id;


CREATE USER 'dea'@'%' IDENTIFIED BY '{s9qX@#r'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.dea_subset TO 'dea'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table mlo_subset (doc_id char(11) not null, note char(1) not null);

create index mlo_subset_ind on mlo_subset(doc_id, note);

create view mlo_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, mlo_subset s where  m.doc_id = s.doc_id;


CREATE USER 'mlo'@'%' IDENTIFIED BY '{u4PDQ9-'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.mlo_subset TO 'mlo'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table tja_subset (doc_id char(11) not null, note char(1) not null);

create index tja_subset_ind on tja_subset(doc_id, note);

create view tja_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, tja_subset s where  m.doc_id = s.doc_id;


CREATE USER 'tja'@'%' IDENTIFIED BY '5v3>KWO5'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.tja_subset TO 'tja'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table dta_subset (doc_id char(11) not null, note char(1) not null);

create index dta_subset_ind on dta_subset(doc_id, note);

create view dta_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, dta_subset s where  m.doc_id = s.doc_id;


CREATE USER 'dta'@'%' IDENTIFIED BY 'G5MjfzTP'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.dta_subset TO 'dta'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

create table pvl_subset (doc_id char(11) not null, note char(1) not null);

create index pvl_subset_ind on pvl_subset(doc_id, note);

create view pvl_full_rpt as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, pvl_subset s where  m.doc_id = s.doc_id;


CREATE USER 'pvl'@'%' IDENTIFIED BY 'M@b<DH-1'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.pvl_subset TO 'pvl'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;


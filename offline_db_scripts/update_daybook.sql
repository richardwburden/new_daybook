use ndaybook;
load data local infile 'E:/as/databases/daybook/update/DTL.TXT' into table dtl fields terminated by '\t';
delete from dtlhld where doc_id = 'B9255AAA001' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255AAA001' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255AAA001' and dtl_seqno = '2';
delete from dtlhld where doc_id = 'B9255AAA002' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255AAA002' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255BFG001' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255BFG001' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255BFG001' and dtl_seqno = '2';
delete from dtlhld where doc_id = 'B9255BFG001' and dtl_seqno = '3';
delete from dtlhld where doc_id = 'B9255CCC001' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255CCC001' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255CCC001' and dtl_seqno = '2';
delete from dtlhld where doc_id = 'B9255CCC002' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255CCC002' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255CCC002' and dtl_seqno = '2';
delete from dtlhld where doc_id = 'B9255CCC002' and dtl_seqno = '3';
delete from dtlhld where doc_id = 'B9255CCC003' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255CCC003' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255CCC003' and dtl_seqno = '2';
delete from dtlhld where doc_id = 'B9255CCC003' and dtl_seqno = '3';
delete from dtlhld where doc_id = 'B9255CJO001' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255CJO001' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255CJO001' and dtl_seqno = '2';
delete from dtlhld where doc_id = 'B9255CJO001' and dtl_seqno = '3';
delete from dtlhld where doc_id = 'B9255CJO002' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255CJO002' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255CJO002' and dtl_seqno = '2';
delete from dtlhld where doc_id = 'B9255CJO002' and dtl_seqno = '3';
delete from dtlhld where doc_id = 'B9255CJO003' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255CJO003' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255CJO003' and dtl_seqno = '2';
delete from dtlhld where doc_id = 'B9255CJO003' and dtl_seqno = '3';
delete from dtlhld where doc_id = 'B9255CJO004' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255CJO004' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255CJO004' and dtl_seqno = '2';
delete from dtlhld where doc_id = 'B9255CJO004' and dtl_seqno = '3';
delete from dtlhld where doc_id = 'B9255CRR001' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255CRR001' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255CRR001' and dtl_seqno = '2';
delete from dtlhld where doc_id = 'B9255CRR001' and dtl_seqno = '3';
delete from dtlhld where doc_id = 'B9255EDA001' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255EDA001' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255EDA001' and dtl_seqno = '2';
delete from dtlhld where doc_id = 'B9255EDA001' and dtl_seqno = '3';
delete from dtlhld where doc_id = 'B9255PDS001' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255PDS001' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255PDS002' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255PDS002' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255RMA001' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255RMA001' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255RMA002' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255RMA002' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255RMA003' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255RMA003' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255RMA004' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255RMA004' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255RMA004' and dtl_seqno = '2';
delete from dtlhld where doc_id = 'B9255RMA005' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255RMA005' and dtl_seqno = '1';
delete from dtlhld where doc_id = 'B9255RMA006' and dtl_seqno = '0';
delete from dtlhld where doc_id = 'B9255RMA006' and dtl_seqno = '1';
load data local infile 'E:/as/databases/daybook/update/DTLHLD.TXT' into table dtlhld fields terminated by '\t';
load data local infile 'E:/as/databases/daybook/update/MASTER.TXT' into table master fields terminated by '\t';
delete from msthld where doc_id = 'B9255AAA001';
delete from msthld where doc_id = 'B9255AAA002';
delete from msthld where doc_id = 'B9255BFG001';
delete from msthld where doc_id = 'B9255CCC001';
delete from msthld where doc_id = 'B9255CCC002';
delete from msthld where doc_id = 'B9255CCC003';
delete from msthld where doc_id = 'B9255CJO001';
delete from msthld where doc_id = 'B9255CJO002';
delete from msthld where doc_id = 'B9255CJO003';
delete from msthld where doc_id = 'B9255CJO004';
delete from msthld where doc_id = 'B9255CRR001';
delete from msthld where doc_id = 'B9255EDA001';
delete from msthld where doc_id = 'B9255PDS001';
delete from msthld where doc_id = 'B9255PDS002';
delete from msthld where doc_id = 'B9255RMA001';
delete from msthld where doc_id = 'B9255RMA002';
delete from msthld where doc_id = 'B9255RMA003';
delete from msthld where doc_id = 'B9255RMA004';
delete from msthld where doc_id = 'B9255RMA005';
delete from msthld where doc_id = 'B9255RMA006';
load data local infile 'E:/as/databases/daybook/update/MSTHLD.TXT' into table msthld fields terminated by '\t';
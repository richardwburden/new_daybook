use ndaybook;

truncate table class;
load data local infile 'E:/as/databases/daybook2/class.txt' into table class  fields terminated by ':#:' lines terminated by '~#~';
truncate table conv_stand;
load data local infile 'E:/as/databases/daybook2/conv_stand.txt' into table conv_stand  fields terminated by ':#:' lines terminated by '~#~';
truncate table dtl;
load data local infile 'E:/as/databases/daybook2/dtl.txt' into table dtl  fields terminated by ':#:' lines terminated by '~#~';
truncate table dtlhld;
load data local infile 'E:/as/databases/daybook2/dtlhld.txt' into table dtlhld  fields terminated by ':#:' lines terminated by '~#~';
truncate table master;
load data local infile 'E:/as/databases/daybook2/master.txt' into table master  fields terminated by ':#:' lines terminated by '~#~';
truncate table msthld;
load data local infile 'E:/as/databases/daybook2/msthld.txt' into table msthld  fields terminated by ':#:' lines terminated by '~#~';
truncate table stand;
load data local infile 'E:/as/databases/daybook2/stand.txt' into table stand  fields terminated by ':#:' lines terminated by '~#~';

truncate table system;
load data local infile 'E:/as/databases/daybook2/system.txt' into table system  fields terminated by ':#:' lines terminated by '~#~';

truncate table tophld;
load data local infile 'E:/as/databases/daybook2/tophld.txt' into table tophld  fields terminated by ':#:' lines terminated by '~#~';
truncate table topic;
load data local infile 'E:/as/databases/daybook2/topic.txt' into table topic  fields terminated by ':#:' lines terminated by '~#~';

/*
truncate table ahc_subset;

load data local infile 'E:/as/databases/daybook2/ahc_subset.txt' into table ahc_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ald_subset;

load data local infile 'E:/as/databases/daybook2/ald_subset.txt' into table ald_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ap__subset;

load data local infile 'E:/as/databases/daybook2/ap__subset.txt' into table ap__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table bal_subset;

load data local infile 'E:/as/databases/daybook2/bal_subset.txt' into table bal_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table bmd_subset;

load data local infile 'E:/as/databases/daybook2/bmd_subset.txt' into table bmd_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table brj_subset;

load data local infile 'E:/as/databases/daybook2/brj_subset.txt' into table brj_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table bsn_subset;

load data local infile 'E:/as/databases/daybook2/bsn_subset.txt' into table bsn_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table cbs_subset;

load data local infile 'E:/as/databases/daybook2/cbs_subset.txt' into table cbs_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table chi_subset;

load data local infile 'E:/as/databases/daybook2/chi_subset.txt' into table chi_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table cjo_subset;

load data local infile 'E:/as/databases/daybook2/cjo_subset.txt' into table cjo_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table cjw_subset;

load data local infile 'E:/as/databases/daybook2/cjw_subset.txt' into table cjw_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table cj__subset;

load data local infile 'E:/as/databases/daybook2/cj__subset.txt' into table cj__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table crr_subset;

load data local infile 'E:/as/databases/daybook2/crr_subset.txt' into table crr_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table csn_subset;

load data local infile 'E:/as/databases/daybook2/csn_subset.txt' into table csn_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table das_subset;

load data local infile 'E:/as/databases/daybook2/das_subset.txt' into table das_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table dc__subset;

load data local infile 'E:/as/databases/daybook2/dc__subset.txt' into table dc__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ddg_subset;

load data local infile 'E:/as/databases/daybook2/ddg_subset.txt' into table ddg_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table dhf_subset;

load data local infile 'E:/as/databases/daybook2/dhf_subset.txt' into table dhf_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table dhs_subset;

load data local infile 'E:/as/databases/daybook2/dhs_subset.txt' into table dhs_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table dms_subset;

load data local infile 'E:/as/databases/daybook2/dms_subset.txt' into table dms_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table dns_subset;

load data local infile 'E:/as/databases/daybook2/dns_subset.txt' into table dns_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table dss_subset;

load data local infile 'E:/as/databases/daybook2/dss_subset.txt' into table dss_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table dvb_subset;

load data local infile 'E:/as/databases/daybook2/dvb_subset.txt' into table dvb_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ecb_subset;

load data local infile 'E:/as/databases/daybook2/ecb_subset.txt' into table ecb_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ews_subset;

load data local infile 'E:/as/databases/daybook2/ews_subset.txt' into table ews_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table fej_subset;

load data local infile 'E:/as/databases/daybook2/fej_subset.txt' into table fej_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table fhb_subset;

load data local infile 'E:/as/databases/daybook2/fhb_subset.txt' into table fhb_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ggr_subset;

load data local infile 'E:/as/databases/daybook2/ggr_subset.txt' into table ggr_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ggs_subset;

load data local infile 'E:/as/databases/daybook2/ggs_subset.txt' into table ggs_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ghs_subset;

load data local infile 'E:/as/databases/daybook2/ghs_subset.txt' into table ghs_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table gmr_subset;

load data local infile 'E:/as/databases/daybook2/gmr_subset.txt' into table gmr_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table grc_subset;

load data local infile 'E:/as/databases/daybook2/grc_subset.txt' into table grc_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table idl_subset;

load data local infile 'E:/as/databases/daybook2/idl_subset.txt' into table idl_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table if__subset;

load data local infile 'E:/as/databases/daybook2/if__subset.txt' into table if__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table jba_subset;

load data local infile 'E:/as/databases/daybook2/jba_subset.txt' into table jba_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table jlh_subset;

load data local infile 'E:/as/databases/daybook2/jlh_subset.txt' into table jlh_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table joe_subset;

load data local infile 'E:/as/databases/daybook2/joe_subset.txt' into table joe_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table jph_subset;

load data local infile 'E:/as/databases/daybook2/jph_subset.txt' into table jph_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table js__subset;

load data local infile 'E:/as/databases/daybook2/js__subset.txt' into table js__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table jws_subset;

load data local infile 'E:/as/databases/daybook2/jws_subset.txt' into table jws_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table kam_subset;

load data local infile 'E:/as/databases/daybook2/kam_subset.txt' into table kam_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table krn_subset;

load data local infile 'E:/as/databases/daybook2/krn_subset.txt' into table krn_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table lsw_subset;

load data local infile 'E:/as/databases/daybook2/lsw_subset.txt' into table lsw_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table mcs_subset;

load data local infile 'E:/as/databases/daybook2/mcs_subset.txt' into table mcs_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table mgf_subset;

load data local infile 'E:/as/databases/daybook2/mgf_subset.txt' into table mgf_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table mgm_subset;

load data local infile 'E:/as/databases/daybook2/mgm_subset.txt' into table mgm_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table mjb_subset;

load data local infile 'E:/as/databases/daybook2/mjb_subset.txt' into table mjb_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table mjf_subset;

load data local infile 'E:/as/databases/daybook2/mjf_subset.txt' into table mjf_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table moe_subset;

load data local infile 'E:/as/databases/daybook2/moe_subset.txt' into table moe_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table mpb_subset;

load data local infile 'E:/as/databases/daybook2/mpb_subset.txt' into table mpb_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table mtl_subset;

load data local infile 'E:/as/databases/daybook2/mtl_subset.txt' into table mtl_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ncs_subset;

load data local infile 'E:/as/databases/daybook2/ncs_subset.txt' into table ncs_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table nct_subset;

load data local infile 'E:/as/databases/daybook2/nct_subset.txt' into table nct_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table nj__subset;

load data local infile 'E:/as/databases/daybook2/nj__subset.txt' into table nj__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table pds_subset;

load data local infile 'E:/as/databases/daybook2/pds_subset.txt' into table pds_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table psk_subset;

load data local infile 'E:/as/databases/daybook2/psk_subset.txt' into table psk_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table psu_subset;

load data local infile 'E:/as/databases/daybook2/psu_subset.txt' into table psu_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table rbd_subset;

load data local infile 'E:/as/databases/daybook2/rbd_subset.txt' into table rbd_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ref_subset;

load data local infile 'E:/as/databases/daybook2/ref_subset.txt' into table ref_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table rew_subset;

load data local infile 'E:/as/databases/daybook2/rew_subset.txt' into table rew_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table rfs_subset;

load data local infile 'E:/as/databases/daybook2/rfs_subset.txt' into table rfs_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table rjs_subset;

load data local infile 'E:/as/databases/daybook2/rjs_subset.txt' into table rjs_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table rlb_subset;

load data local infile 'E:/as/databases/daybook2/rlb_subset.txt' into table rlb_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table rmc_subset;

load data local infile 'E:/as/databases/daybook2/rmc_subset.txt' into table rmc_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ron_subset;

load data local infile 'E:/as/databases/daybook2/ron_subset.txt' into table ron_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table rsb_subset;

load data local infile 'E:/as/databases/daybook2/rsb_subset.txt' into table rsb_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table rsm_subset;

load data local infile 'E:/as/databases/daybook2/rsm_subset.txt' into table rsm_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table rss_subset;

load data local infile 'E:/as/databases/daybook2/rss_subset.txt' into table rss_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table sb__subset;

load data local infile 'E:/as/databases/daybook2/sb__subset.txt' into table sb__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table sea_subset;

load data local infile 'E:/as/databases/daybook2/sea_subset.txt' into table sea_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table se__subset;

load data local infile 'E:/as/databases/daybook2/se__subset.txt' into table se__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table sfn_subset;

load data local infile 'E:/as/databases/daybook2/sfn_subset.txt' into table sfn_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table sjk_subset;

load data local infile 'E:/as/databases/daybook2/sjk_subset.txt' into table sjk_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table skl_subset;

load data local infile 'E:/as/databases/daybook2/skl_subset.txt' into table skl_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table skr_subset;

load data local infile 'E:/as/databases/daybook2/skr_subset.txt' into table skr_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table skv_subset;

load data local infile 'E:/as/databases/daybook2/skv_subset.txt' into table skv_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table smt_subset;

load data local infile 'E:/as/databases/daybook2/smt_subset.txt' into table smt_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table spd_subset;

load data local infile 'E:/as/databases/daybook2/spd_subset.txt' into table spd_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table spm_subset;

load data local infile 'E:/as/databases/daybook2/spm_subset.txt' into table spm_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table sre_subset;

load data local infile 'E:/as/databases/daybook2/sre_subset.txt' into table sre_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ssd_subset;

load data local infile 'E:/as/databases/daybook2/ssd_subset.txt' into table ssd_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ssu_subset;

load data local infile 'E:/as/databases/daybook2/ssu_subset.txt' into table ssu_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ssw_subset;

load data local infile 'E:/as/databases/daybook2/ssw_subset.txt' into table ssw_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table tnr_subset;

load data local infile 'E:/as/databases/daybook2/tnr_subset.txt' into table tnr_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table vfr_subset;

load data local infile 'E:/as/databases/daybook2/vfr_subset.txt' into table vfr_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table wcj_subset;

load data local infile 'E:/as/databases/daybook2/wcj_subset.txt' into table wcj_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table wdc_subset;

load data local infile 'E:/as/databases/daybook2/wdc_subset.txt' into table wdc_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table wfw_subset;

load data local infile 'E:/as/databases/daybook2/wfw_subset.txt' into table wfw_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table wie_subset;

load data local infile 'E:/as/databases/daybook2/wie_subset.txt' into table wie_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ws__subset;

load data local infile 'E:/as/databases/daybook2/ws__subset.txt' into table ws__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table sys_subset;

load data local infile 'E:/as/databases/daybook2/sys_subset.txt' into table sys_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table lmd_subset;

load data local infile 'E:/as/databases/daybook2/lmd_subset.txt' into table lmd_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table tla_subset;

load data local infile 'E:/as/databases/daybook2/tla_subset.txt' into table tla_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ib__subset;

load data local infile 'E:/as/databases/daybook2/ib__subset.txt' into table ib__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table pb__subset;

load data local infile 'E:/as/databases/daybook2/pb__subset.txt' into table pb__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table rma_subset;

load data local infile 'E:/as/databases/daybook2/rma_subset.txt' into table rma_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table sek_subset;

load data local infile 'E:/as/databases/daybook2/sek_subset.txt' into table sek_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table agg_subset;

load data local infile 'E:/as/databases/daybook2/agg_subset.txt' into table agg_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table pbg_subset;

load data local infile 'E:/as/databases/daybook2/pbg_subset.txt' into table pbg_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table gh__subset;

load data local infile 'E:/as/databases/daybook2/gh__subset.txt' into table gh__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table mob_subset;

load data local infile 'E:/as/databases/daybook2/mob_subset.txt' into table mob_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table bmb_subset;

load data local infile 'E:/as/databases/daybook2/bmb_subset.txt' into table bmb_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table rwb_subset;

load data local infile 'E:/as/databases/daybook2/rwb_subset.txt' into table rwb_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table kh__subset;

load data local infile 'E:/as/databases/daybook2/kh__subset.txt' into table kh__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table cmc_subset;

load data local infile 'E:/as/databases/daybook2/cmc_subset.txt' into table cmc_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table det_subset;

load data local infile 'E:/as/databases/daybook2/det_subset.txt' into table det_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table gas_subset;

load data local infile 'E:/as/databases/daybook2/gas_subset.txt' into table gas_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table drr_subset;

load data local infile 'E:/as/databases/daybook2/drr_subset.txt' into table drr_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table hwv_subset;

load data local infile 'E:/as/databases/daybook2/hwv_subset.txt' into table hwv_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table lbv_subset;

load data local infile 'E:/as/databases/daybook2/lbv_subset.txt' into table lbv_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table tf__subset;

load data local infile 'E:/as/databases/daybook2/tf__subset.txt' into table tf__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table iam_subset;

load data local infile 'E:/as/databases/daybook2/iam_subset.txt' into table iam_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table cmh_subset;

load data local infile 'E:/as/databases/daybook2/cmh_subset.txt' into table cmh_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table sam_subset;

load data local infile 'E:/as/databases/daybook2/sam_subset.txt' into table sam_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table rsk_subset;

load data local infile 'E:/as/databases/daybook2/rsk_subset.txt' into table rsk_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table bd__subset;

load data local infile 'E:/as/databases/daybook2/bd__subset.txt' into table bd__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table mty_subset;

load data local infile 'E:/as/databases/daybook2/mty_subset.txt' into table mty_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table sey_subset;

load data local infile 'E:/as/databases/daybook2/sey_subset.txt' into table sey_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table sfy_subset;

load data local infile 'E:/as/databases/daybook2/sfy_subset.txt' into table sfy_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table wdy_subset;

load data local infile 'E:/as/databases/daybook2/wdy_subset.txt' into table wdy_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table sj__subset;

load data local infile 'E:/as/databases/daybook2/sj__subset.txt' into table sj__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ars_subset;

load data local infile 'E:/as/databases/daybook2/ars_subset.txt' into table ars_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table edg_subset;

load data local infile 'E:/as/databases/daybook2/edg_subset.txt' into table edg_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table aky_subset;

load data local infile 'E:/as/databases/daybook2/aky_subset.txt' into table aky_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table dmy_subset;

load data local infile 'E:/as/databases/daybook2/dmy_subset.txt' into table dmy_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table jc__subset;

load data local infile 'E:/as/databases/daybook2/jc__subset.txt' into table jc__subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table ccc_subset;

load data local infile 'E:/as/databases/daybook2/ccc_subset.txt' into table ccc_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table mab_subset;

load data local infile 'E:/as/databases/daybook2/mab_subset.txt' into table mab_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table bsm_subset;

load data local infile 'E:/as/databases/daybook2/bsm_subset.txt' into table bsm_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table dea_subset;

load data local infile 'E:/as/databases/daybook2/dea_subset.txt' into table dea_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table mlo_subset;

load data local infile 'E:/as/databases/daybook2/mlo_subset.txt' into table mlo_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table tja_subset;

load data local infile 'E:/as/databases/daybook2/tja_subset.txt' into table tja_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table dta_subset;

load data local infile 'E:/as/databases/daybook2/dta_subset.txt' into table dta_subset  fields terminated by ':#:' lines terminated by '~#~';

truncate table pvl_subset;

load data local infile 'E:/as/databases/daybook2/pvl_subset.txt' into table pvl_subset  fields terminated by ':#:' lines terminated by '~#~';

*/
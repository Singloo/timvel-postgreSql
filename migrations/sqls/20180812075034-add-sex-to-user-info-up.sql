/* Replace with your SQL commands */
alter table timvel_db.user_info add column sex   int default 2;
alter table timvel_db.user_info add column sex_detail text;

create index user_info_sex
on timvel_db.user_info(sex);

create index user_info_sex_detail
on timvel_db.user_info(sex_detail);
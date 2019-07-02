/* Replace with your SQL commands */
alter table timvel_db.user_info drop column objectid;
alter table timvel_db.user_info drop column mobile_phone_number;
alter table timvel_db.user_info add column object_id text;
alter table timvel_db.user_info add column phone_number text;
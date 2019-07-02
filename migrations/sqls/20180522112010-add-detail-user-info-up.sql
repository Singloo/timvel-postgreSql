/* Replace with your SQL commands */
alter table timvel_db.user_info drop column origanization;
alter table timvel_db.user_info add column organzation text;
alter table timvel_db.user_info add column detail jsonb;
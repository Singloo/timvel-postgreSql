/* Replace with your SQL commands */
alter table timvel_db.user_info drop column user_id;
alter table timvel_db.user_info add column id serial primary key;
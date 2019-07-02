/* Replace with your SQL commands */
alter table timvel_db.user_photos add column unique_id text;
create index user_photos_unique_id 
on timvel_db.user_photos(unique_id);
/* Replace with your SQL commands */
drop index timvel_db.user_info_username;
drop index timvel_db.user_info_object_id;
create unique index user_info_username
on timvel_db.user_info(username);

create unique index user_info_object_id
on timvel_db.user_info(object_id);
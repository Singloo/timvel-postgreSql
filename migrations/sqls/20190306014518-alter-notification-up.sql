/* Replace with your SQL commands */
drop index timvel_db.notification_child_id;
create index notification_cild_id_type
on timvel_db.notification(type,child_id);
/* Replace with your SQL commands */
create table timvel_db.notification_comment(
  id                serial PRIMARY key,
  user_id           text,
  content           text,
  sender_user_id    text,
  created_at        TIMESTAMP DEFAULT now(),
  updated_at        TIMESTAMP DEFAULT now()
);

create index notification_comment_user_id
on timvel_db.notification_comment(user_id);

create unique index notification_child_id
on timvel_db.notification(child_id);
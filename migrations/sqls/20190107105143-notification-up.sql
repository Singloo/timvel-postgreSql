/* Replace with your SQL commands */
create table timvel_db.notification(
  id              serial PRIMARY key,
  user_id         text,
  type            text,
  child_id        int,
  is_read         BOOLEAN DEFAULT FALSE,
  created_at      TIMESTAMP DEFAULT now(),
  updated_at      TIMESTAMP DEFAULT now()
);
create index notification_user_id
on timvel_db.notification(user_id);
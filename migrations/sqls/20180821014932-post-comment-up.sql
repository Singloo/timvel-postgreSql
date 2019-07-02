/* Replace with your SQL commands */
create table timvel_db.post_comments(
  id          serial primary key,
  post_id     int not null,
  user_id     int,
  content     text,
  created_at   timestamp default now(),
  updated_at   timestamp default now()
);

create index post_comments_post_id
on timvel_db.post_comments(post_id);

create index post_comments_user_id
on timvel_db.post_comments(user_id);
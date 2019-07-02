/* Replace with your SQL commands */
create table timvel_db.post_tags(
  id          serial primary key,
  tag         text unique,
  created_at  timestamp default now(),
  updated_at  timestamp default now()
);

create unique index post_tags_tag
on timvel_db.post_tags(tag);
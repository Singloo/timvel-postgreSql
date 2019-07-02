/* Replace with your SQL commands */
create table timvel_db.user_images(
  id              serial primary key,
  url             text,
  user_id         int,
  image_type      text,
  post_id         int,
  created_at      timestamp default now(),
  updated_at      timestamp default now()
);

create index user_images_user_id
on timvel_db.user_images(user_id);

create index user_images_image_type
on timvel_db.user_images(image_type);

create index user_images_post_id
on timvel_db.user_images(post_id);
/* Replace with your SQL commands */
create table timvel_db.posts(
  id                serial primary key,
  video_url         text default null,
  content           text,
  image_urls        jsonb,
  audio_url         text default null,
  user_id           int not null
)
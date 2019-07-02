/* Replace with your SQL commands */
create table timvel_db.post_emojis(
  id            serial primary key,
  post_id       int unique,
  shock         int default 0,
  angry         int default 0,
  nofeeling     int default 0,
  vomit         int default 0,
  laugh         int default 0,
  created_at    timestamp default now(),
  updated_at    timestamp default now()  
);

create index post_emojis_shock
on timvel_db.post_emojis(shock);

create index post_emojis_angry
on timvel_db.post_emojis(angry);

create index post_emojis_nofeeling
on timvel_db.post_emojis(nofeeling);

create index post_emojis_vomit
on timvel_db.post_emojis(vomit);

create index post_emojis_laugh
on timvel_db.post_emojis(laugh);

create unique index post_emojis_post_id
on timvel_db.post_emojis(post_id);

create index post_emojis_all
on timvel_db.post_emojis(post_id,shock,nofeeling,vomit,angry,laugh);
/* Replace with your SQL commands */
alter table timvel_db.posts add column post_type text;
alter table timvel_db.posts add COLUMN tag text;

create index posts_post_type
on timvel_db.posts(post_type);

create index posts_tag
on timvel_db.posts(tag);
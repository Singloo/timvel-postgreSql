/* Replace with your SQL commands */
drop view api.posts;
drop view api.post_tags;
alter table timvel_db.posts drop column tag;

alter table timvel_db.posts add column tag_id int;

create index posts_tag_id
on timvel_db.posts(tag_id);


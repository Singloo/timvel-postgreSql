/* Replace with your SQL commands */
-- drop index user_info_user_coin;
alter table timvel_db.user_info drop column user_coin;
alter table timvel_db.user_info add column user_coin     BIGINT DEFAULT 200;

create index user_info_user_coin
on timvel_db.user_info(user_coin);

create index posts_id
on timvel_db.posts(id);

create index posts_content
on timvel_db.posts(content);

create index posts_user_id
on timvel_db.posts(user_id);
/*
 * File: /Users/origami/Desktop/timvel-db/migrations/sqls/20190320023042-posts-precision-up.sql
 * Project: /Users/origami/Desktop/timvel-db
 * Created Date: Wednesday March 20th 2019
 * Author: Rick yang tongxue(🍔🍔) (origami@timvel.com)
 * -----
 * Last Modified: Wednesday March 20th 2019 10:30:56 am
 * Modified By: Rick yang tongxue(🍔🍔) (origami@timvel.com)
 * -----
 */
/* Replace with your SQL commands */
alter table timvel_db.posts drop column date_precision;

alter table timvel_db.posts add column precision text not NULL default 'day';
create index posts_precision on 
timvel_db.posts(precision);

drop view api.posts;
create view api.posts as
select
posts.id as post_id,
posts.content,
posts.image_urls,
(case when posts.happened_at is null then date(posts.created_at)::text else posts.happened_at end),
posts.created_at,
posts.tag,
posts.weather_info,
posts.post_type,
posts.user_id,
posts.precision,
user_info.username,
user_info.avatar,
coalesce(post_emojis.angry,0) as angry,
coalesce(post_emojis.laugh,0) as laugh,
coalesce(post_emojis.nofeeling,0) as nofeeling,
coalesce(post_emojis.shock,0) as shock,
coalesce(post_emojis.vomit,0) as vomit,
coalesce(post_emojis.angry,0)*0.8 
+ coalesce(post_emojis.laugh,0)*1.2
+ coalesce(post_emojis.nofeeling,0) *1
+ coalesce(post_emojis.shock,0)*1.3
+ coalesce(post_emojis.vomit,0)*0.9 as popularity,
count(post_comments.*) as num_of_comments
from timvel_db.posts
left join timvel_db.post_emojis
on posts.id = post_emojis.post_id

left join timvel_db.post_comments
on posts.id = post_comments.post_id

left join timvel_db.user_info
on posts.user_id = user_info.object_id

group by posts.id,post_emojis.angry,post_emojis.laugh,post_emojis.nofeeling,post_emojis.shock,post_emojis.vomit,user_info.username,user_info.avatar

order by popularity desc;

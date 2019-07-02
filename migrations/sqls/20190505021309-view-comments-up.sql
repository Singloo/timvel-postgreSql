/*
 * File: /Users/origami/Desktop/timvel-db/migrations/sqls/20190505021309-view-comments-up.sql
 * Project: /Users/origami/Desktop/timvel-db
 * Created Date: Sunday May 5th 2019
 * Author: Rick yang tongxue(🍔🍔) (origami@timvel.com)
 * -----
 * Last Modified: Sunday May 5th 2019 10:14:14 am
 * Modified By: Rick yang tongxue(🍔🍔) (origami@timvel.com)
 * -----
 */
/* Replace with your SQL commands */
drop view api.post_comments;
create view api.post_comments as 
select
post_comments.id as comment_id,
post_comments.user_id as user_id,
post_comments.content,
post_comments.post_id,
post_comments.created_at,
post_comments.updated_at,
user_info.username,
user_info.avatar

from timvel_db.post_comments
left join timvel_db.user_info
on post_comments.user_id = user_info.object_id
order by post_comments.created_at asc;
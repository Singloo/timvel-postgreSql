/* Replace with your SQL commands */
create view api.post_comments as 
select
post_comments.user_id as user_id,
post_comments.content,
post_comments.post_id,
post_comments.created_at,
post_comments.updated_at,
user_info.username,
user_info.avatar

from timvel_db.post_comments
left join timvel_db.user_info
on post_comments.user_id = user_info.id
order by post_comments.created_at asc
/* Replace with your SQL commands */
drop view api.notification_comment;
create view api.notification_comment
AS
select
notification_comment.id as notification_comment_id,
notification_comment.post_id,
notification_comment.sender_user_id,
notification_comment.receiver_user_id,
notification_comment.comment_id,
notification_comment.associated_comment_id,
notification_comment.created_at,
p1.user_id as post_user_id,
c1.content,
c2.content as associated_content,
u1.username as sender_username,
u1.avatar as sender_avatar,
u1.sex as sender_sex,
u2.username as receiver_username,
u2.avatar as receiver_avatar,
u2.sex as receiver_sex
from timvel_db.notification_comment
left join timvel_db.post_comments c1
on notification_comment.comment_id = c1.id
left join timvel_db.post_comments c2
on notification_comment.associated_comment_id = c2.id
left join timvel_db.user_info u1
on notification_comment.sender_user_id = u1.object_id
left join timvel_db.user_info u2
on notification_comment.receiver_user_id = u2.object_id
left join timvel_db.posts p1
on notification_comment.post_id = p1.id
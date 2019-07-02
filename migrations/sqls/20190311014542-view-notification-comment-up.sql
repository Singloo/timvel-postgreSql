/*
 * File: /Users/origami/Desktop/timvel-db/migrations/sqls/20190311014542-view-notification-comment-up.sql
 * Project: /Users/origami/Desktop/timvel-db
 * Created Date: Monday March 11th 2019
 * Author: Rick yang tongxue(🍔🍔) (origami@timvel.com)
 * -----
 * Last Modified: Monday March 11th 2019 9:50:26 am
 * Modified By: Rick yang tongxue(🍔🍔) (origami@timvel.com)
 * -----
 */
/* Replace with your SQL commands */
create view api.notification_comment
as 
select
notification_comment.id as notification_comment_id,
notification_comment.post_id,
notification_comment.sender_user_id,
notification_comment.receiver_user_id,
notification_comment.comment_id,
notification_comment.associated_comment_id,
notification_comment.created_at,
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
on notification_comment.receiver_user_id = u2.object_id;
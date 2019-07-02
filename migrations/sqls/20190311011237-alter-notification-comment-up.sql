/*
 * File: /Users/origami/Desktop/timvel-db/migrations/sqls/20190311011237-alter-notification-comment-up.sql
 * Project: /Users/origami/Desktop/timvel-db
 * Created Date: Monday March 11th 2019
 * Author: Rick yang tongxue(🍔🍔) (origami@timvel.com)
 * -----
 * Last Modified: Monday March 11th 2019 9:13:47 am
 * Modified By: Rick yang tongxue(🍔🍔) (origami@timvel.com)
 * -----
 */
/* Replace with your SQL commands */
alter table timvel_db.notification_comment add column associated_comment_id int;
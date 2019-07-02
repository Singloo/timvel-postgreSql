/*
 * File: /Users/origami/Desktop/timvel-db/migrations/sqls/20190307120904-add-comment-id-up.sql
 * Project: /Users/origami/Desktop/timvel-db
 * Created Date: Thursday March 7th 2019
 * Author: Rick yang tongxue(🍔🍔) (origami@timvel.com)
 * -----
 * Last Modified: Thursday March 7th 2019 8:11:11 pm
 * Modified By: Rick yang tongxue(🍔🍔) (origami@timvel.com)
 * -----
 */
/* Replace with your SQL commands */
alter table timvel_db.post_comments add column associated_comment_id int;
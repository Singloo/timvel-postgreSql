/* Replace with your SQL commands */
drop view api.post_comments;
drop view api.post_tags;
drop view api.posts;
drop view api.products;
drop view api.titles;

alter table timvel_db.emoji_history alter column user_id type text;
alter table timvel_db.gift_history alter column receiver_user_id type text;
alter table timvel_db.gift_history alter column sender_user_id type text;
alter table timvel_db.post_comments alter column user_id type text;
alter table timvel_db.posts alter column user_id type text;
alter table timvel_db.products alter column user_id type text;
alter table timvel_db.titles alter column user_id type text;
alter table timvel_db.transaction_history alter COLUMN user_id type text;
alter table timvel_db.user_gifts alter COLUMN user_id type text;
alter table timvel_db.user_images alter COLUMN user_id type text;
alter table timvel_db.user_titles alter COLUMN user_id type text;
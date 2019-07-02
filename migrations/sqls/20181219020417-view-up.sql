/* Replace with your SQL commands */
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
on post_comments.user_id = user_info.object_id
order by post_comments.created_at asc;

create view api.post_tags as 
select
post_tags.tag,
count(posts.*) as popularity
from timvel_db.post_tags
left join timvel_db.posts
on post_tags.tag = posts.tag
group by post_tags.tag;

create view api.products as
select
products.id as product_id,
products.name,
products.image_url,
products.description,
products.product_type,
products.price,
products.user_id,
products.title_id,
titles.title,
titles.color as title_color,
user_info.object_id as user_object_id,
products.status,
coalesce(count(transaction_history.*),0) as sales,
products.created_at,
products.updated_at
from timvel_db.products
left join timvel_db.transaction_history
on products.id = transaction_history.product_id
left join timvel_db.user_info
on products.user_id = user_info.object_id
left join timvel_db.titles
on products.title_id = titles.id
group by products.id,user_info.object_id,titles.title,titles.color;

create view api.titles 
AS
select
titles.id as title_id,
titles.title,
titles.color,
titles.description,
coalesce(count(user_titles.*),0) as num_of_owners,
titles.created_at,
titles.updated_at
from timvel_db.titles
left join timvel_db.user_titles
on titles.id = user_titles.title_id
group by titles.id
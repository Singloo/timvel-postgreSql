/* Replace with your SQL commands */
create view api.post_tags as 
select
post_tags.tag,
count(posts.*) as popularity
from timvel_db.post_tags
left join timvel_db.posts
on post_tags.tag = posts.tag
group by post_tags.tag
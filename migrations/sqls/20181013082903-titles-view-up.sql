/* Replace with your SQL commands */
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
/* Replace with your SQL commands */
create view api.user_titles
as
select
user_titles.user_id,
user_titles.is_wearing,
titles.id as title_id,
titles.color,
titles.title,
titles.description
from timvel_db.user_titles
left join timvel_db.titles
on timvel_db.user_titles.title_id = timvel_db.titles.id

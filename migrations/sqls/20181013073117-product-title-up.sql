/* Replace with your SQL commands */
alter table timvel_db.products
add column title_id    int;

create table timvel_db.titles(
  id              serial primary key,
  title           text,
  color           text,
  description     text  default '',
  user_id         int,
  created_at      timestamp default now(),
  updated_at      timestamp default now()
);

create unique index titles_title_color 
on timvel_db.titles(title,color);

create index titles_user_id
on timvel_db.titles(user_id);

create table timvel_db.user_titles(
  id              serial primary key,
  user_id         int,
  title_id        int,
  is_wearing      BOOLEAN DEFAULT false,
  created_at      TIMESTAMP DEFAULT now(),
  updated_at      TIMESTAMP DEFAULT now()
);

create index user_titles_user_id
on timvel_db.user_titles(user_id);

create unique index user_titles_user_id_title_id
on timvel_db.user_titles(user_id,title_id);

drop view api.products;
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
on products.user_id = user_info.id
left join timvel_db.titles
on products.title_id = titles.id
group by products.id,user_info.object_id,titles.title,titles.color
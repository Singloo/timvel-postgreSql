/* Replace with your SQL commands */
drop table timvel_db.products;
create table timvel_db.products(
  id              serial primary key,
  name            text,
  description     text,
  price           int,
  image_url       text,
  user_id         int,
  product_type    text,
  status          text,
  created_at      timestamp DEFAULT now(),
  updated_at      timestamp default now()
);

create index products_price
on timvel_db.products(price);

create index products_type
on timvel_db.products(product_type);

create index products_user_id
on timvel_db.products(user_id);

create index products_status
on timvel_db.products(status);

create view api.products as
select
products.id as product_id,
products.name,
products.image_url,
products.description,
products.product_type,
products.price,
products.user_id,
products.status,
coalesce(count(transaction_history.*),0) as sales,
products.created_at,
products.updated_at
from timvel_db.products
left join timvel_db.transaction_history
on products.id = transaction_history.product_id
group by products.id
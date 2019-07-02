/* Replace with your SQL commands */
create table timvel_db.products(
  id          serial primary key,
  name        text,
  description text,
  price       int,
  product_type    text,
  created_at  timestamp DEFAULT now(),
  updated_at  timestamp default now()
);

create index products_price
on timvel_db.products(price);

create index products_type
on timvel_db.products(product_type);

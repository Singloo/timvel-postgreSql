/* Replace with your SQL commands */
create table timvel_db.transaction_history(
  id             serial primary key,
  product_id     int,
  user_id        int,
  created_at     timestamp default now(),
  updated_at     timestamp default now()
)
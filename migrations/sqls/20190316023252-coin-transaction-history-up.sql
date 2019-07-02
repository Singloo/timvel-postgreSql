/* Replace with your SQL commands */
create table timvel_db.coin_transaction_records(
  id                    serial PRIMARY key,
  user_id               text,
  type                  text,
  amount                text,
  product_id            int,
  child_id              int,
  created_at            TIMESTAMP DEFAULT now(),
  updated_at            TIMESTAMP DEFAULT now()
);

create index coin_transaction_records_user_id
on timvel_db.coin_transaction_records(user_id);

create index coin_transaction_records_type
on timvel_db.coin_transaction_records(type);
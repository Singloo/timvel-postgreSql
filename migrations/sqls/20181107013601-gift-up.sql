/* Replace with your SQL commands */
create table timvel_db.user_gifts(
  id              serial PRIMARY KEY,
  user_id         int,
  flowers         int default 0,
  shits           int default 0,
  created_at      TIMESTAMP DEFAULT now(),
  updated_at      TIMESTAMP DEFAULT now()
);

CREATE table timvel_db.gift_history(
  id                serial PRIMARY key,
  user_gift_id      int,
  receiver_user_id  int,
  sender_user_id    int,
  gift_type         text,
  created_at        TIMESTAMP DEFAULT now(),
  updated_at        TIMESTAMP DEFAULT now()
);

create unique index user_gifts_user_id
on timvel_db.user_gifts(user_id);

create index user_gifts_flowers
on timvel_db.user_gifts(flowers);

create index user_gifts_shits
on timvel_db.user_gifts(shits);

create index gift_history_receiver
on timvel_db.gift_history(receiver_user_id);

create index gift_history_sender
on timvel_db.gift_history(sender_user_id)
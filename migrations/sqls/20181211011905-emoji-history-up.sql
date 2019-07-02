/* Replace with your SQL commands */
create table timvel_db.emoji_history(
  id              serial PRIMARY key,
  user_id         int,
  post_id         int,
  emoji           text,
  created_at      TIMESTAMP DEFAULT now(),
  updated_at      TIMESTAMP DEFAULT now()
)
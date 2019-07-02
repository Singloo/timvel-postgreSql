/* Replace with your SQL commands */
alter table timvel_db.posts add column created_at   timestamp default now();       
alter table timvel_db.posts add column updated_at   timestamp default now();
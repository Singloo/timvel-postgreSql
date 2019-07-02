/* Replace with your SQL commands */
alter table timvel_db.posts add column year int;
alter table timvel_db.posts add column month int;
alter table timvel_db.posts add column day  int;
alter table timvel_db.posts add column happened_at text;

create index posts_year
on timvel_db.posts(year);

create index posts_month
on timvel_db.posts(month);

create index posts_day
on timvel_db.posts(day);

create index posts_happened_at
on timvel_db.posts(happened_at);
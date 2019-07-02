/* Replace with your SQL commands */
alter table timvel_db.posts add column date_precision text DEFAULT 'day';

create index posts_date_precision
on timvel_db.posts(date_precision);
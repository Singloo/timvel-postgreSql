/* Replace with your SQL commands */
alter table timvel_db.user_info add column country      text;
alter table timvel_db.user_info add column city         text;

alter table timvel_db.user_info drop column usertitle;
alter table timvel_db.user_info drop column usercoin;

alter table timvel_db.user_info add column user_coin    BIGINT;

create index user_info_id
on timvel_db.user_info(id);

create index user_info_username
on timvel_db.user_info(username);

create index user_info_user_coin
on timvel_db.user_info(user_coin);

create index user_info_country
on timvel_db.user_info(country);

create index user_info_city
on timvel_db.user_info(city);

create index user_info_object_id
on timvel_db.user_info(object_id);

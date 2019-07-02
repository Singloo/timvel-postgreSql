/* Replace with your SQL commands */
create table timvel_db.user_info(
  user_id               serial primary key,
  objectId              text,
  username              text not null,
  usertitle             text,
  usercoin              int default 100,
  email                 text,
  mobile_phone_number   int,
  origanization         text,
  created_at            timestamp default now(),
  updated_at            timestamp default now()
);
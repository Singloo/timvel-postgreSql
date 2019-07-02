/* Replace with your SQL commands */
alter table timvel_db.posts drop column image_urls;
alter table timvel_db.posts add column image_urls   JSONB DEFAULT '[]'

/* Replace with your SQL commands */
create table timvel_db.user_photos(
    id                  serial PRIMARY KEY,
    user_id             text not NULL,
    edges               JSONB,
    page_info           JSONB,
    task_status         text DEFAULT 'waiting',
    created_at          TIMESTAMP DEFAULT now(),
    updated_at          TIMESTAMP DEFAULT now()
);

create index user_photos_user_id
on timvel_db.user_photos(user_id);
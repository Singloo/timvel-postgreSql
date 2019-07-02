/* Replace with your SQL commands */
create table timvel_db.user_photo_exceptions(
    id                  serial PRIMARY KEY,
    user_id             text,
    unique_id           text,
    photo               JSONB,
    done                BOOLEAN DEFAULT false,
    created_at          TIMESTAMP DEFAULT now(),
    updated_at          TIMESTAMP DEFAULT now()
);
create index user_photo_exceptions_user_id_unique_id
on timvel_db.user_photo_exceptions(user_id,unique_id);
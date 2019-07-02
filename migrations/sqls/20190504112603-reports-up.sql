/*
 * File: /Users/origami/Desktop/timvel-db/migrations/sqls/20190504112603-reports-up.sql
 * Project: /Users/origami/Desktop/timvel-db
 * Created Date: Saturday May 4th 2019
 * Author: Rick yang tongxue(🍔🍔) (origami@timvel.com)
 * -----
 * Last Modified: Sunday May 5th 2019 9:25:47 am
 * Modified By: Rick yang tongxue(🍔🍔) (origami@timvel.com)
 * -----
 */
/* Replace with your SQL commands */
create table timvel_db.reports(
    id              serial PRIMARY key,
    child_id        text,
    user_id         text,
    type            text,
    reason          text,
    solved          BOOLEAN DEFAULT FALSE,
    created_at      TIMESTAMP DEFAULT now(),
    updated_at      TIMESTAMP DEFAULT now()
);
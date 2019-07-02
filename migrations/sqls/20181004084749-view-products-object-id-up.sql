/* Replace with your SQL commands */
drop view api.products;
create view api.products as
select
products.id as product_id,
products.name,
products.image_url,
products.description,
products.product_type,
products.price,
products.user_id,
user_info.object_id as user_object_id,
products.status,
coalesce(count(transaction_history.*),0) as sales,
products.created_at,
products.updated_at
from timvel_db.products
left join timvel_db.transaction_history
on products.id = transaction_history.product_id
left join timvel_db.user_info
on products.user_id = user_info.id
group by products.id,user_info.object_id

select
    id as order_id,
    customer_id,
    ordered_at as order_date,
    order_total
from {{ source('jaffle_shop', 'orders') }}

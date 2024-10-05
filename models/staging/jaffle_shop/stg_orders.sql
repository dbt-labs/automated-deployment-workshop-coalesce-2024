select
    id as order_id,
    user_id as customer_id,
    order_date,
    _etl_loaded_at
from {{ source('jaffle_shop', 'orders') }}

select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status as payment_status,

        --`amount` is currently stored in cents, so we convert it to dollars
        amount as amount

from {{ source('stripe', 'payment') }}
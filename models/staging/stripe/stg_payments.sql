select 
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    {{cents_to_dollars('amount',4)}} as amount,
    created as created_date,
    -- _batched_at as batched_at
from {{ source ('stripe','payment') }}

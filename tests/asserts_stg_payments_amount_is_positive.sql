-- All payment amounds should be >= 0.
-- test changes to see if any order_id has an amount < 0

with payments as (
    select * from {{ ref('stg_payments') }}
)

select 
    order_id, 
    sum(amount) as total_amount
from payments
group by 1
having total_amount < 0
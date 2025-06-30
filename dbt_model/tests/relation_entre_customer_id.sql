select
    stg_orders.customer_id
from {{ ref('stg_orders') }} as stg_orders
left join {{ ref('stg_customers') }} as stg_customers
    on stg_orders.customer_id = stg_customers.customer_id
where stg_customers.customer_id is null
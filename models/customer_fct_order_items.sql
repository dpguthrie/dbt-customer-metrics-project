with source as (
    select * from {{ ref('tpch', 'fct_order_items') }}
)
    
select a.*
from source a
join {{ ref('customer_mapping') }} b on
    a.customer_key = b.customer_key
    and b.snowflake_user = current_user

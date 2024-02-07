with source as (
    select * from {{ ref('tpch', 'fct_orders') }}
)
    
select a.*
from source a
join {{ ref('customer_mapping') }} b on
    a.customer_key = b.customer_key
    and b.snowflake_user = current_user

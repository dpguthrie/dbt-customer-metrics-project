select * from {{ ref('tpch', 'fct_order_items') }}
where customer_key = split(current_user, '_')[1]::int
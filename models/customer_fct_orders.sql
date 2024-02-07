select * from {{ ref('tpch', 'fct_orders') }}
where customer_key = split(current_user, '_')[1]::int
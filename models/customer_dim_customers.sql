select * from {{ ref('tpch', 'dim_customers') }}
where customer_key = split(current_user, '_')[1]::int
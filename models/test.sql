select
    order_id,
    sum(amount) as total_amount
from `silent-snow-474415-k9`.`dbt_bcorrigan`.`stg_stripe_payments`
group by 1
having total_amount < 10
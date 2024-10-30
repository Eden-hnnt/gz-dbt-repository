SELECT *
    , ROUND ((tot_margin + shipping_fee - logcost - ship_cost),3) AS operational_margin
FROM  {{ref("stg_raw__ship")}}
JOIN {{ref("int_orders_margin")}}
USING (orders_id)
ORDER BY orders_id DESC
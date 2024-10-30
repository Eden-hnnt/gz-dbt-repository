SELECT 
    date_date,
    orders_id,
    SUM (revenue) AS tot_revenue,
    SUM (margin) AS tot_margin,
    SUM (quantity) AS tot_quantity,
    SUM (purchase_cost) AS tot_purchase_cost
FROM {{ref("int_sales_margin")}}
GROUP BY orders_id, date_date
ORDER BY date_date DESC 
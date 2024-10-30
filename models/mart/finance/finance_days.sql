{{ config(
  materialized='table',
  full_refresh=true
) }}

SELECT
date_date,
COUNT (orders_id) AS numb_orders,
ROUND (SUM (tot_revenue),2) AS tot_revenue_day,
ROUND (SAFE_DIVIDE (SUM (tot_revenue),COUNT(orders_id)),2) AS average_basket, 
ROUND (SUM (operational_margin),2) AS tot_op_margin_day,
ROUND (SUM (tot_purchase_cost),2) AS tot_purchase_cost_day,
ROUND (SUM (shipping_fee),2) AS tot_ship_fee_day,
ROUND (SUM (logcost),2) AS tot_logcost_day,
ROUND (SUM (tot_quantity),2) AS tot_prod_sold
FROM {{ref("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date DESC


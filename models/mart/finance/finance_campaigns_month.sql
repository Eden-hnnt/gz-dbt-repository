SELECT
    FORMAT_DATE('%Y-%m',DATE (date_date)) AS datemonth,
    ROUND (SUM (ads_margin),1) AS ads_margin_month,
    ROUND (SUM (ads_cost),1) AS ads_cost_month, 
    ROUND (SUM (ads_impression),1) AS ads_impression_month, 
    ROUND (SUM (ads_click),1)  AS ads_click_month,
    ROUND (SUM (numb_orders),1)  AS numb_orders_month, 
    ROUND (SUM (tot_revenue_day),1)  AS revenu_month,
    ROUND (SUM (average_basket),1)  AS average_month,
    ROUND (SUM (tot_op_margin_day),1)  AS margin_month,
    ROUND (SUM (tot_purchase_cost_day),1)  AS purchase_cost_month, 
    ROUND (SUM (tot_ship_fee_day),1)  AS ship_fee_month, 
    ROUND (SUM (tot_logcost_day),1)  AS logcost_month,
    ROUND (SUM (tot_prod_sold),1)  AS prod_sold_month
 FROM {{ ref('finance_campaigns_day') }}
 GROUP BY datemonth
 ORDER BY datemonth DESC
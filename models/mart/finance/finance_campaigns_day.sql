SELECT
    c.ads_cost,
    c.ads_impression,
    c.ads_click,
    c.date_date,
    f.numb_orders,
    f.tot_revenue_day,
    f.average_basket, 
    f.tot_op_margin_day,
    f.tot_purchase_cost_day,
    f.tot_ship_fee_day,
    f.tot_logcost_day,
    f.tot_prod_sold,
    tot_op_margin_day - ads_cost AS ads_margin
 FROM {{ ref('int_campaigns_day') }} c
 FULL OUTER JOIN {{ ref('finance_days') }} f
     USING (date_date)
 ORDER BY date_date DESC
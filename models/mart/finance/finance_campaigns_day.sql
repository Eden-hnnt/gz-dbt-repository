SELECT 
MONTH (date_date) AS date_month,
ROUND ((tot_op_margin_day-ads_cost),2) AS ads_margin
FROM {{ref("finance_days")}}
LEFTJOIN {{ref("int_campaigns")}}
USING (date_date)




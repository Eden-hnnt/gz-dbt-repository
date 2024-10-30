SELECT *
    , ROUND ((quantity * purchase_price),2) AS purchase_cost
    , ROUND ((revenue - (quantity * purchase_price)),2) AS margin
    , {{margin_percent('revenue', 'purchase_price')}} AS margin_percent
FROM  {{ref("stg_raw__product")}}
JOIN {{ref("stg_raw__sales")}}
USING (products_id)


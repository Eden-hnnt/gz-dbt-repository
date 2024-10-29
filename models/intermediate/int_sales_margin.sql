SELECT *,
FROM  {{ref("stg_raw__product")}} AS product 
JOIN {{ref("stg_raw__sales")}} 
USING (products_id)
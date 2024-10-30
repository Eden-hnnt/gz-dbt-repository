
 SELECT *
 FROM {{ref('stg_raw__Adwords')}}
 UNION ALL
 SELECT *
 FROM {{ref('stg_raw__Bing')}}
 UNION ALL
 SELECT *
 FROM {{ref('stg_raw__Criteo')}}
 UNION ALL
 SELECT *
 FROM {{ref('stg_raw__Facebook')}}
ORDER BY paid_source

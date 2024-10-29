with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,

        logcost,
        CAST (ship_cost AS INT64) ship_cost


    from source
    WHERE shipping_fee_1 <> shipping_fee
)

select * from renamed

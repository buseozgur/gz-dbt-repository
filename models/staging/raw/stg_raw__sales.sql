with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        SAFE_CAST(pdt_id AS INT64) AS products_id,
        revenue,
        quantity

    from source

)

select * from renamed
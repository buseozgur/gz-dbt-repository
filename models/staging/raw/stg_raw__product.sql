with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        SAFE_CAST(products_id AS INT64) AS products_id,
        SAFE_CAST(purchse_price AS FLOAT64) AS purchase_price

    from source

)

select * from renamed
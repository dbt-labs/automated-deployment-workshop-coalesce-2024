with

source as (

    select * from {{ source('jaffle_shop', 'customers') }}

),

renamed as (

    select

        ----------  ids
        id as customer_id,
        1 as fun,
        ---------- text
        first_name || ' ' || last_name as customer_name

    from source

)

select * from renamed

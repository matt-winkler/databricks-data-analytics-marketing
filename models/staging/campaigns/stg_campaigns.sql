

with campaigns as (

    select * from {{ ref('campaigns') }}

),final as (

    select
    
    ID,
    Name,
    Type,
    is_high_value,
    is_mid_value,
    is_low_value,
    Owner

    from campaigns

)

select * from final
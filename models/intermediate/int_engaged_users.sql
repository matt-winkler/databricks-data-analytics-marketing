with engaged_users_staging as (
    select * from {{ ref('engaged_users') }}
)

    select
        user_id,
        sum(engagement) as total_engagement
    from engaged_users_staging
    group by user_id
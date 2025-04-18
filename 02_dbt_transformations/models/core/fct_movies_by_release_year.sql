{{
    config(
        materialized='table'
    )
}}

with netflix_movies_by_year as (
    select
        show_id,
        cast(concat(release_year, '-01-01') as date) as release_year,
        'Netflix' as streaming_service
    from {{ ref('stg_netflix_data') }}
    where release_year > 1990
)
select *
from netflix_movies_by_year


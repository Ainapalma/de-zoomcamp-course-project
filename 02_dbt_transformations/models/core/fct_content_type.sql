{{
    config(
        materialized='table'
    )
}}

with netflix_movies as (
    select
        show_id,
        type,
        'Netflix' as streaming_service
    from {{ ref('stg_netflix_data') }}
)
select
	streaming_service,
	type,
	count(*) as type_count
from netflix_movies
group by 
	streaming_service,
	type

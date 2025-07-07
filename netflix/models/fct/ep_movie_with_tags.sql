with fct_movie_with_tags as (
    select * from {{ ref('dim_movies_with_tags') }}
)
select * from fct_movie_with_tags
with raw_movies as (
    select * from NETFLIX.RAW.RAW_MOVIES
)
select movieId as movie_id, title, genres
from  raw_movies
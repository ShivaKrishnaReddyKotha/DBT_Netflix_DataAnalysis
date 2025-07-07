{{
    config(
        materialized = 'table'
    )
}}

with raw_tags as (
    select * from NETFLIX.RAW.RAW_TAGS
)
select userId as user_id, movieId as movie_id, tag, TO_TIMESTAMP_LTZ(timestamp) as tag_timestamp
from  raw_tags
with raw_genome_scores as (
    select * from NETFLIX.RAW.RAW_GENOME_SCORES
)
select movieId as movie_id, tagId as tag_id, relevance
from  raw_genome_scores
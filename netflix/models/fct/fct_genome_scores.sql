with src_scores as (
    select * from {{ ref('src_genome_scores') }}
)
select movie_id, tag_id, ROUND(relevance, 4) as relevance_score
from src_scores
WHERE relevance > 0
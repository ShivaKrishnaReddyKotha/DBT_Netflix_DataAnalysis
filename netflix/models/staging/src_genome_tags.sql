with raw_genome_tags as (
    select * from NETFLIX.RAW.RAW_GENOME_TAGS
)
select tagId as tag_id, tag
from  raw_genome_tags
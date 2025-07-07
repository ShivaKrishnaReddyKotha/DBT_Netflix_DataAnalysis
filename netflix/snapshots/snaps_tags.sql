{% snapshot snap_tags %}

{{
    config (
        target_schema = 'snapshots',
        unique_key = ['user_id', 'movie_id', 'tag'],
        strategy = 'timestamp',
        updated_at = 'tag_timestamp',
        invalidate_hard_deletes = True,
    )
}}

select 
{{ dbt_utils.generate_surrogate_key(['user_id', 'movie_id', 'tag']) }} as row_key, user_id, movie_id, tag, cast(tag_timestamp as TIMESTAMP_NTZ) as tag_timestamp
from {{ ref('src_tags') }}
limit 100

{% endsnapshot %}
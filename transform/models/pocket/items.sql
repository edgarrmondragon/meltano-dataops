select
  item_id
  , given_url
  , given_title
  , datetime(time_added, 'unixepoch') as added_at
  , case when time_read > 0 then datetime(time_read, 'unixepoch') end as read_at
  , datetime(time_updated, 'unixepoch') as updated_at
  , time_to_read
from {{ source('pocket', 'items') }}

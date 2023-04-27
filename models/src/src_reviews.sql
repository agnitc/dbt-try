with raw_reviews as (
    select * from {{ source('airbnb', 'reviews') }}
)

select
listing_id,
date AS review_date,
reviewer_name,
comments AS review_text,
sentiment AS review_sentiment
from raw_reviews
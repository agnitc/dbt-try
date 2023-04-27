select 1 as result
from 
{{ ref('fct_reviews') }} fct
join
{{ ref('dim_listings_cleansed') }} dim
on 
fct.listing_id=dim.listing_id
where 
fct.review_date<dim.created_at
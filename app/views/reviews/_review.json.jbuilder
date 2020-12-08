json.extract! review, :id, :album_id, :reviewtitle, :reviewbody, :created_at, :updated_at
json.url review_url(review, format: :json)

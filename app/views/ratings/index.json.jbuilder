json.array!(@ratings) do |rating|
  json.extract! rating, :id, :comment, :score, :beer_id
  json.url rating_url(rating, format: :json)
end

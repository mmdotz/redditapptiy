json.array!(@posts) do |post|
  json.extract! post, :id, :url, :num_votes, :user_id
  json.url post_url(post, format: :json)
end

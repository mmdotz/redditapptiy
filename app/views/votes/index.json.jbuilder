json.array!(@votes) do |vote|
  json.extract! vote, :id, :up, :down, :user_id
  json.url vote_url(vote, format: :json)
end

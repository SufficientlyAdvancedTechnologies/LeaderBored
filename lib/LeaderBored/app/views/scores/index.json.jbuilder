json.array!(@scores) do |score|
  json.extract! score, :id, :leaderboard_id, :player_id, :score
  json.url score_url(score, format: :json)
end

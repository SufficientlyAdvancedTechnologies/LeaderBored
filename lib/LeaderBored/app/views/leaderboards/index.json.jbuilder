json.array!(@leaderboards) do |leaderboard|
  json.extract! leaderboard, :id, :created_by_id, :created_at, :name, :description, :status
  json.url leaderboard_url(leaderboard, format: :json)
end

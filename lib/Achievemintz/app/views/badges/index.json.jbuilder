json.array!(@badges) do |badge|
  json.extract! badge, :id, :achievement_id, :player_id, :multiplier, :status
  json.url badge_url(badge, format: :json)
end

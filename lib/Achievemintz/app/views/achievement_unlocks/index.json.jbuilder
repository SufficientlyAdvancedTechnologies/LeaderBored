json.array!(@achievement_unlocks) do |achievement_unlock|
  json.extract! achievement_unlock, :id, :player_id, :progression, :status
  json.url achievement_unlock_url(achievement_unlock, format: :json)
end

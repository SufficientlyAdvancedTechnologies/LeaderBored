json.array!(@achievements) do |achievement|
  json.extract! achievement, :id, :created_by_id, :name, :status
  json.url achievement_url(achievement, format: :json)
end

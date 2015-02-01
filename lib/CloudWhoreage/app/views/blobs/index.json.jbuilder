json.array!(@blobs) do |blob|
  json.extract! blob, :id, :app_id, :user_id, :data, :status
  json.url blob_url(blob, format: :json)
end

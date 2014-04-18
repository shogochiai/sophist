json.array!(@topics) do |topic|
  json.extract! topic, :id, :name, :deleted_at
  json.url topic_url(topic, format: :json)
end

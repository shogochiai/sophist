json.array!(@lists) do |list|
  json.extract! list, :id, :title, :deleted_at
  json.url list_url(list, format: :json)
end

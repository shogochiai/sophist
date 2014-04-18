json.array!(@fields) do |field|
  json.extract! field, :id, :title, :content, :deleted_at
  json.url field_url(field, format: :json)
end

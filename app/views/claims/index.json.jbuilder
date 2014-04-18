json.array!(@claims) do |claim|
  json.extract! claim, :id, :content, :deleted_at
  json.url claim_url(claim, format: :json)
end

json.array!(@documents) do |document|
  json.extract! document, :share_id
  json.url document_url(document, format: :json)
end

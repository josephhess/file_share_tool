json.array!(@shares) do |share|
  json.extract! share, :email, :recipient_email, :message, :url_string
  json.url share_url(share, format: :json)
end

json.array!(@parties) do |party|
  json.extract! party, :id, :nameaddress, :latitude, :longitude, :starts_at, :openbar, :dress_code, :string, :description, :disco_tweet
  json.url party_url(party, format: :json)
end

json.array!(@cymbals) do |cymbal|
  json.extract! cymbal, :id, :type, :family, :inches, :name
  json.url cymbal_url(cymbal, format: :json)
end

json.array!(@societies) do |society|
  json.extract! society, :id
  json.url society_url(society, format: :json)
end

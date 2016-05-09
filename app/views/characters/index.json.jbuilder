json.array!(@characters) do |character|
  json.extract! character, :id, :first_name, :last_name, :univers_id, :membership_id
  json.url character_url(character, format: :json)
end

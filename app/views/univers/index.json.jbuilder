json.array!(@univers) do |univer|
  json.extract! univer, :id, :name, :user_id
  json.url univer_url(univer, format: :json)
end

json.array!(@events) do |event|
  json.extract! event, :id, :name, :univers_id, :place_id, :day
  json.url event_url(event, format: :json)
end

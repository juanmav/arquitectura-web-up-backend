json.array!(@flights) do |flight|
  json.extract! flight, :id, :day_order
  json.url flight_url(flight, format: :json)
end

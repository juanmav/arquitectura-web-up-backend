json.array!(@pilots) do |pilot|
  json.extract! pilot, :id, :name, :last, :picture
  json.url pilot_url(pilot, format: :json)
end

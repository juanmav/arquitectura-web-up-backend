json.array!(@planes) do |plane|
  json.extract! plane, :id, :domain, :picture
  json.url plane_url(plane, format: :json)
end

json.array!(@skydivers) do |skydiver|
  json.extract! skydiver, :id, :name, :last, :picture
  json.url skydiver_url(skydiver, format: :json)
end

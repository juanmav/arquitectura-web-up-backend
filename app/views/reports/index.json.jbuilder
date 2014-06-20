json.array!(@reports) do |report|
  json.extract! report, :name, :altitude, :count
  #json.url report_url(report, format: :json)
end

json.array!(@facilities) do |facility|
  json.extract! facility, :id, :facility_name, :proprieter, :district, :cluster
  json.url facility_url(facility, format: :json)
end

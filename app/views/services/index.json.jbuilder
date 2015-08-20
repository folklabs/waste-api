json.array!(@services) do |service|
  json.extract! service, :id, :name, :frequency, :esd_id, :organization
  json.url service_url(service, format: :json)
end

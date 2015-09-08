json.array!(@containers) do |container|
  json.extract! container, :id, :uprn, :container_type_id
  json.url container_url(container, format: :json)
end

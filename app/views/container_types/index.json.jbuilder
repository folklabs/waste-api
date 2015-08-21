json.array!(@container_types) do |container_type|
  json.extract! container_type, :id, :shape, :size, :color, :lid_color
  json.url container_type_url(container_type, format: :json)
end

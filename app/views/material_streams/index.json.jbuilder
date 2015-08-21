json.array!(@material_streams) do |material_stream|
  json.extract! material_stream, :id, :name, :color
  json.url material_stream_url(material_stream, format: :json)
end

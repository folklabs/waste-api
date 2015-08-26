class CreateJoinTableContainerTypeMaterialStream < ActiveRecord::Migration
  def change
    create_join_table :container_types, :material_streams do |t|
      # t.index [:container_type_id, :material_stream_id]
      # t.index [:material_stream_id, :container_type_id]
    end
  end
end

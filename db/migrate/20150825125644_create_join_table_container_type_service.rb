class CreateJoinTableContainerTypeService < ActiveRecord::Migration
  def change
    create_join_table :container_types, :services do |t|
      # t.index [:container_type_id, :service_id]
      # t.index [:service_id, :container_type_id]
    end
  end
end

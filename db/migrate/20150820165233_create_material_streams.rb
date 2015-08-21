class CreateMaterialStreams < ActiveRecord::Migration
  def change
    create_table :material_streams do |t|
      t.string :name
      t.string :color

      t.timestamps null: false
    end
  end
end

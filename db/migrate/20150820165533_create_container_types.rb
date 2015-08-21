class CreateContainerTypes < ActiveRecord::Migration
  def change
    create_table :container_types do |t|
      t.string :shape
      t.string :size
      t.string :color
      t.string :lid_color

      t.timestamps null: false
    end
  end
end

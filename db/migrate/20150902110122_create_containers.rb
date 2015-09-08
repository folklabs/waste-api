class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.integer :uprn, index: true
      t.references :container_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

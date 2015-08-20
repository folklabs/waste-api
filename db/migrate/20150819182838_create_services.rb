class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :frequency
      t.integer :esd_id
      t.string :organization

      t.timestamps null: false
    end
  end
end

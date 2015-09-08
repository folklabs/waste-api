class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_type
      t.string :image
      t.string :uprn

      t.timestamps null: false
    end
    add_index :events, :uprn
  end
end

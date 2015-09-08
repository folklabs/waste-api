class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :name
      t.date :date
      t.references :round_plan, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

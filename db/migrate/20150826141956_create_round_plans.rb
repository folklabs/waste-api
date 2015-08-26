class CreateRoundPlans < ActiveRecord::Migration
  def change
    create_table :round_plans do |t|
      t.string :name
      t.string :schedule
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end

class AddRoundRefToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :round, index: true, foreign_key: true
  end
end

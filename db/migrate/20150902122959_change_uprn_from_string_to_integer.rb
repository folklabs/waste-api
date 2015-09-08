class ChangeUprnFromStringToInteger < ActiveRecord::Migration
  def change
    change_column :events, :uprn, :integer
  end
end

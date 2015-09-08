class CreateJoinTableRoundPlanService < ActiveRecord::Migration
  def change
    create_join_table :round_plans, :services do |t|
      t.index [:round_plan_id, :service_id]
      t.index [:service_id, :round_plan_id]
    end
  end
end

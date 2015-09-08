class Round < ActiveRecord::Base
  belongs_to :round_plan
  has_many :events

  scope :rounds_by_plan, -> (round_plan_id) { where("date < ? AND round_plan_id == ?", Time.now, round_plan_id) }#.last }
  # scope :last_round_from_plan, -> (round_plan) { rounds_from_plan(round_plan).last }
end

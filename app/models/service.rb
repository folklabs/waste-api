class Service < ActiveRecord::Base
  belongs_to :organization
  has_and_belongs_to_many :container_types
  has_and_belongs_to_many :round_plans
  has_many :rounds, through: :round_plans

  #TODO: need to filter these by uprn
  
  def last_collection
    dates = self.round_plans.map { |rp| rp.last_collection }
    last_date = dates.max
  end

  def last_collection_round
    # TODO: filter by property
    plan = round_plans.last
    round = Round.rounds_by_plan(plan.id).last
  end

  def next_collection
    dates = self.round_plans.map { |rp| rp.next_collection }
    next_date = dates.min
  end
end

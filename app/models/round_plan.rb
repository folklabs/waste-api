class RoundPlan < ActiveRecord::Base
  has_and_belongs_to_many :services
  has_many :rounds

  

  def to_s
    rule = IceCube::Rule.from_yaml(self.schedule).to_s
  end

  def last_collection_by_schedule
    # pry
    rule = IceCube::Rule.from_yaml(self.schedule)
    schedule = IceCube::Schedule.new(Time.now - 30.days)
    schedule.add_recurrence_rule(rule)
    date = schedule.previous_occurrence(Time.now)
    # puts date
    # date
  end

  # def last_round
  #   where("date < ?", Time.now).first
  # end

  def next_collection
    # pry
    rule = IceCube::Rule.from_yaml(self.schedule)
    schedule = IceCube::Schedule.new(Time.now)
    schedule.add_recurrence_rule(rule)
    date = schedule.next_occurrence(Time.now)
    # puts date
    # date
  end
end

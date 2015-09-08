require 'rails_helper'
require'spec_helper'

describe RoundPlan do
  let(:plan) {FactoryGirl.create(:round_plan)}

  describe "repeating rule" do
    it "describes a pattern" do
      # puts plan.last_collection
      expect(plan.to_s).to eq('Weekly on Mondays')
    end
  end

  describe "gives a last collection date" do
    it "gives a date on a Monday" do
      # puts plan.last_collection
      expect(plan.last_collection.monday?).to eq(true)
    end
  end

end


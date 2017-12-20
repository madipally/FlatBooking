require 'rails_helper'

RSpec.describe Flat, type: :model do
  it "has a valid factory" do
    flat = FactoryGirl.create :flat
    expect(flat).to be_valid
  end
end
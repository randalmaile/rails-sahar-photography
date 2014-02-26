require 'spec_helper'

describe Workorder do
  before do
    @workorder = build(:workorder)
    @workorder_invalid1 = build(:invalid_workorder1)
  end

  it "saves workorders to the db when valid" do
    expect(@workorder).to be_valid
  end

  it "does not save a workorder to the db if invalid" do
    expect(@workorder_invalid1).to be_invalid
  end
  # it "will not save to the db with an invalid url" do
  #   @workorder.save!
  #   expect(@workorder_invalid).to be_invalid
  # end
end

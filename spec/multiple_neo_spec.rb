require_relative '../lib/neo.rb'

describe "Near Earth Objects" do
  before(:all) do
    @near_earth_objects = Neo.new("2015-09-07", "2015-09-08").multiple_neo_service
  end

  context "response" do

    it "should return a hash" do

    end

  end


end

require_relative '../lib/neo.rb'

describe "Near Earth Objects" do
  before(:all) do
    @near_earth_objects = Neo.new("2015-09-07", "2015-09-08").multiple_neo_service
  end

  context "response" do

    it "should return a hash" do
      expect(@near_earth_objects.neos).to be_a Hash
    end

  end

  context "all the neos" do
    it "should be a hash (near_earth_objects)" do
      expect(@near_earth_objects.neos["near_earth_objects"]).to be_a Hash
    end

    it "should be an integer (element_count)" do
      expect(@near_earth_objects.neos["element_count"]).to be_a Integer
    end

  end

  context "Each date in near_earth_objects" do
    it "should contain an array (near_earth_objects)" do
      @near_earth_objects.neos["near_earth_objects"].each do |date|
        expect(date).to be_a Array
      end
    end

    
  end


end

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

    context "(In each near earth object date)" do
      it "should be a hash" do
          @near_earth_objects.near_earth.each do |near|
            expect(near.last.first).to be_a Hash
          end
        end

        it "should be a string (id)" do
          @near_earth_objects.near_earth.each do |near|
            # expect(near.last.first['id']).to be_a String
            expect(near.last.first["id"]).to be_a String
          end
        end

        it "should be a string (neo_reference_id)" do
          @near_earth_objects.near_earth.each do |near|
            expect(near.last.first['neo_reference_id']).to be_a String
          end
        end

        it "should be a string (name)" do
          @near_earth_objects.near_earth.each do |near|
            expect(near.last.first['name']).to be_a String
          end
        end

        it "should be a string (nasa_jpl_url)" do
          @near_earth_objects.near_earth.each do |near|
            expect(near.last.first['nasa_jpl_url']).to be_a String
          end
        end

        it "should be a float (absolute_magnitude_h)" do
          @near_earth_objects.near_earth.each do |near|
            expect(near.last.first['absolute_magnitude_h']).to be_a Float
          end
        end

        it "should be a hash (links)" do
          @near_earth_objects.near_earth.each do |near|
            expect(near.last.first['links']).to be_a Hash
          end
        end

        it "should be a hash (kilometers)" do
          @near_earth_objects.near_earth.each do |near|
            expect(near.last.first['links']).to be_a Hash
          end
        end

        it "should be a hash (meters)" do
          @near_earth_objects.near_earth.each do |near|
            expect(near.last.first['links']).to be_a Hash
          end
        end

        it "should be a hash (miles)" do
          @near_earth_objects.near_earth.each do |near|
            expect(near.last.first['links']).to be_a Hash
          end
        end

        it "should be a hash (feet)" do
          @near_earth_objects.near_earth.each do |near|
            expect(near.last.first['links']).to be_a Hash
          end
        end

      end
    end

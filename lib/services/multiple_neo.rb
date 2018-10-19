require 'httparty'
require 'json'

class MultipleNeoService
  include HTTParty

  base_uri 'https://api.nasa.gov/neo/rest/v1/feed?'

  attr_accessor :neos, :start_date, :end_date, :near_earth

  def initialize start_date, end_date
    # Set near earth objects
    @start_date = start_date
    @end_date = end_date

    get_neos

    @near_earth = []
    @near_earth = set_near_earth_objects

  end

  def get_neos
    @neos = JSON.parse(self.class.get("start_date=#{@start_date}&end_date=#{@end_date}&api_key=lmQj2tczUARKJX7pRkwMwiNv6LRKCqIzFG7MD9aI").body)
  end

  def set_near_earth_objects
    @neos["near_earth_objects"].each do |date|
      date.last.each do |neo|
        # Each near earth object in date
        @near_earth.push neo
      end
    end
  end
end

require 'httparty'
require 'json'

class MultipleNeoService
  include HTTParty

  base_uri 'https://api.nasa.gov/neo/rest/v1/feed?'

  attr_accessor :neos, :start_date, :end_date

  def initialize start_date, end_date
    # Set near earth objects
    @start_date = start_date
    @end_date = end_date
    get_neos
  end

  def get_neos
    @neos = JSON.parse(self.class.get("start_date=#{@start_date}&end_date=#{@end_date}&api_key=lmQj2tczUARKJX7pRkwMwiNv6LRKCqIzFG7MD9aI").body)
  end
end

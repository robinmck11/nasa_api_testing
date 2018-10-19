require_relative "services/multiple_neo.rb"

class Neo

  attr_accessor :start_date, :end_date

  def initialize start_date, end_date
    @start_date = start_date
    @end_date = end_date
  end

  def multiple_neo_service
    MultipleNeoService.new @start_date, @end_date
  end
end

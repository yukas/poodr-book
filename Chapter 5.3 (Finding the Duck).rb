require "minitest/autorun"

class Trip
  attr_reader :bicycles, :customers, :vehicle
  
  def prepare(preparers)
    preparers.each { |preparer| preparer.prepare_trip(self) }
  end
end

class Mechanic
  def prepare_trip(trip)
    trip.bicycles.each { |bicycle| prepare_bycicle(bicycle) }
  end
  
  def prepare_bycicle(bicycle)
    # ...
  end
end

class TripTest < MiniTest::Test
  def test_prepare
    trip = Trip.new
    preparer = Minitest::Mock.new
    preparer.expect :prepare_trip, nil, [ Trip ]
    
    trip.prepare([preparer])
    
    preparer.verify
  end
end
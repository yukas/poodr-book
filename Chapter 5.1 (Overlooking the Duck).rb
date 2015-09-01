class Trip
  attr_reader :bicycles, :customers, :vehicle
  
  def prepare(mechanic)
    mechanic.prepare_bycicles(bicycles)
  end
end

class Mechanic
  def prepare_bycicles(bicycles)
    bicycles.each { |bicycle| prepare_bycicle(bicycle) }
  end
  
  def prepare_bycicle(bicycle)
    # ...
  end
end
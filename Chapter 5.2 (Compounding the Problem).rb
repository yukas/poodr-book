class Trip
  attr_reader :bicycles, :customers, :vehicle
  
  def prepare(preparer)
    case preparer
    when Mechanic
      preparer.prepare_bycicles(bicycles)
    # ...
    end
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
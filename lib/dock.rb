require './lib/renter'
require './lib/boat'

class Dock
  attr_reader :name,
              :max_rental_time


  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
  end

  def rent(boat, renter)
    boat.add_hour
  end

  def log_hour
    
  end

  def return
  end

end

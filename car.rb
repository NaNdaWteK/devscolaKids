class Car
  def initialize
    @rides = []
  end
  def add(ride)
    @rides << ride
  end
  def rides
    @rides
  end
end

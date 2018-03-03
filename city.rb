require_relative 'ride'
require_relative 'car'

class City
  attr_reader :car_list
  def initialize(input_data)
    @initial_data = input_data.split("\n")[0]
    @ride_list = create_ride_list(input_data)
    @first_ride = input_data.split("\n")[1]
    @car_list = create_car_list(input_data)
  end

  def create_ride_list(input_data)
    input_splited = input_data.split("\n")
    input_splited.shift
    input_splited
  end

  def rides
    num_rides = @initial_data.split(" ")[3].to_i
    result = []
    num_rides.times do |index|
      result << Ride.new(@ride_list[index])
    end
    result
  end

  def create_car_list(input_data)
    num_cars =  @initial_data.split(" ")[4].to_i
    result = []
    num_cars.times do
      result << Car.new
    end
    result
  end

  def assign_rides_to_car(car)
    @car_list[car].add(0)
  end
end

require_relative '../city'

describe 'Rides' do
  INPUT = "3 4 2 3 2 10\n0 0 1 3 2 9\n1 2 1 0 0 9\n2 0 2 2 0 9"
  it 'receives ride-list info' do
    city = City.new(INPUT)
    rides = city.rides

    expect(rides.size).to equal(3)
    expect(rides[0].class).to equal(Ride)
  end

  it 'first rides starts on position 0,0' do
    city = City.new(INPUT)
    rides = city.rides

    expect(rides[0].start_position).to eq [0,0]
  end

  it 'knows how many rides has' do
    input = "3 4 2 2 2 10\n0 0 1 3 2 9\n1 2 1 0 0 9"
    rides_size = input.split(" ")[3].to_i

    city = City.new(input)
    rides = city.rides

    expect(rides.size).to eq(rides_size)
  end

  it 'knows the second rides first position' do
    city = City.new(INPUT)
    rides = city.rides

    expect(rides[1].start_position).to eq [1,2]
  end

  it 'knows the second rides end position' do
    city = City.new(INPUT)
    rides = city.rides

    expect(rides[1].end_position).to eq [1,0]
  end

  it 'first ride earlier start is instant 2' do
    city = City.new(INPUT)
    rides = city.rides

    expect(rides[0].earliest_time).to eq 2
  end

  it 'second ride latest finish is instant 9' do
    city = City.new(INPUT)
    rides = city.rides

    expect(rides[1].latest_time).to eq 9
  end

  it 'knows the distance' do
    city = City.new(INPUT)
    rides = city.rides

    expect(rides[0].distance).to eq(4)
  end

  it 'receives ride-list info' do
    city = City.new(INPUT)
    fleet = city.car_list

    expect(fleet.size).to equal(2)
    expect(fleet[0].class).to equal(Car)
  end

  it 'assigns first ride to first car' do
    city = City.new(INPUT)
    rides = city.rides
    fleet = city.car_list
    city.assign_rides_to_car(0)


    expect(fleet[0].rides).to eq [0]
  end
end

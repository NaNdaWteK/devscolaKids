class Ride
  def initialize(ride)
    @ride = ride

    @start = start_position
    @end = end_position
  end

  def start_position
    start = []
    start << x_start_position
    start << y_start_position
    start
  end

  def end_position
    end_pos = []
    end_pos << x_end_position
    end_pos << y_end_position
    end_pos
  end

  def earliest_time
    @ride.split(' ')[4].to_i
  end

  def latest_time
    @ride.split(' ')[5].to_i
  end

  def distance
    dist = (@start[0] - @end[0]).abs
    dist += (@start[1] - @end[1]).abs
    dist
  end

  def x_start_position
    @ride.split(' ')[0].to_i
  end

  def y_start_position
    @ride.split(' ')[1].to_i
  end

  def x_end_position
    @ride.split(' ')[2].to_i
  end

  def y_end_position
    @ride.split(' ')[3].to_i
  end
end

require ('clock_angle')
require ('rspec')

describe('#clock_angle') do
  it('returns the ange between the minute hand and the hour hand') do
    expect(clock_angle("12:00")).to(eq(0))
  end

  it('returns the positive angle value') do
    expect(clock_angle("11:45")).to(eq(82.5))
  end

  it('return the acute angle between the two hands') do
    expect(clock_angle("6:05")).to(eq(152.5))
    expect(clock_angle("5:55")).to(eq(152.5))
  end
end

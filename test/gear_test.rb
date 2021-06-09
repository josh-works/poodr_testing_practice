require './test/test_helper'

class DiameterDouble
  def width
    10
  end
end

class DiameterDoubleTest < Minitest::Test
  include DiameterizableInterfaceTest
  
  def setup
    @object = DiameterDouble.new
  end
end

class GearTest < MiniTest::Test
  def test_calculates_gear_inches
    gear = Gear.new(
            chainring: 52,
            cog: 11,
            wheel: DiameterDouble.new)

    assert_in_delta(47.27, gear.gear_inches, 0.01)
  end
end
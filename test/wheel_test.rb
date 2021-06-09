require './test/test_helper'

class WheelTest < MiniTest::Test
  include DiameterizableInterfaceTest
  
  def setup
    @wheel = @object = Wheel.new(26, 1.5)
  end
    
  def test_calculates_diameter    
    assert_in_delta(29, @wheel.width, 0.01)
  end
  
end
require 'test_helper'

class PowerSeriesTest < Minitest::Test

  def subject
    @subject ||=  Power.new
  end

  def test_print
    assert_equal [1,8,27], subject.print(3, 3)
    assert_equal [1, 4, 9, 16, 25, 36, 49], subject.print(7, 2)
  end
end

require 'test_helper'

class FibonacciSeriesTest < Minitest::Test

  def subject
    @subject ||=  Fibonacci.new
  end

  def test_print
    assert_equal [0,1,1], subject.print(3)
    assert_equal [0,1,1,2,3,5,8], subject.print(7)
  end
end
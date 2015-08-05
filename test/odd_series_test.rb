require 'test_helper'

class OddSeriesTest < Minitest::Test

  def subject
    @subject ||=  Odd.new
  end

  def test_print
    assert_equal [1,3,5], subject.print(3)
    assert_equal [1,3,5,7,9,11,13], subject.print(7)
  end
end
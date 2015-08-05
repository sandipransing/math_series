require 'test_helper'

class EvenSeriesTest < Minitest::Test

  def subject
    @subject ||=  Even.new
  end

  def test_print
    assert_equal [0,2,4], subject.print(3)
    assert_equal [0,2,4,6,8,10,12], subject.print(7)
  end
end
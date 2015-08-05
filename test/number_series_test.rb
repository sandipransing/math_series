require 'test_helper'

class NumberSeriesTest < Minitest::Test

  def subject
    @subject ||=  Number.new
  end

  def test_print
    assert_equal [1,2,3,4,5], subject.print(5)
    assert_equal [1,2,3], subject.print(3)
  end
end
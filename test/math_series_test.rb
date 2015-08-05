require 'test_helper'

class MathSeriesTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::MathSeries::VERSION
  end

  def subject(*name)
    @subject ||=  MathSeries.new *name
  end

  def test_raises_error_for_unknown_series
    assert_raises MathSeries::NameError do
      subject 'X-man'
    end
  end

  def test_name
    subject 'odd'
    assert_equal 'odd', subject.name
  end
end
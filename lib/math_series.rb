require 'forwardable'
require "math_series/version"
require "math_series/name_error"
require "math_series/serises"

class MathSeries
  # A +MathSeries+ object represents a series, and is capable of generating the sequence
  #
  # At the moment, the following types of series supported:
  #
  # * Number
  # * Odd
  # * Even
  # * Fibonacci
  # * Power
  #
  # == Example Usage
  #   series = MathSeries.new('fibonacci')
  #
  #   series.print(4) # => [0,1,1,2]
  #
  #   series1 = MathSeries.new('power')
  #   series1.print(3,3) # => [1,8,27]
  #
  extend Forwardable

  # Returns series name.
  #
  # @return [String]
  attr_reader :name

  # Returns series type object
  #
  # @return [Object]
  attr_reader :series

  # Returns sequence 
  #
  # @return [Array]
  def_delegator :series, :print

	def initialize name='number'
		@name = name
		@series = series_class.new
	end

	private
	def series_class #:nodoc:
		Object.const_get klass_name
  rescue Exception => e
    raise NameError, e.message
  end

  def klass_name #:nodoc:
    name.split('_').collect!{ |w| w.capitalize }.join
  end
end

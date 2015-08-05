class Fibonacci
  def print len
    series = [0, 1]
    (series << series[-1] + series[-2]) while series.length < len
    series[0..len-1]
  end
end
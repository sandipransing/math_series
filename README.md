# Math Series

[![Gem Version](https://badge.fury.io/rb/math_series.svg)](http://badge.fury.io/rb/math_series)
[![Build Status](https://secure.travis-ci.org/sandipransing/math_series.svg?branch=master)](http://travis-ci.org/sandipransing/math_series)
[![Dependency Status](https://gemnasium.com/sandipransing/math_series.svg)](https://gemnasium.com/sandipransing/math_series)
[![License](http://img.shields.io/:license-mit-green.svg?style=flat)](http://opensource.org/licenses/MIT)

A simple ruby gem to generate and print different types of math sequences.

Currently following sequences are supported:
- Fibonacci Series
- Odd Series
- Even Series

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'math_series'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install math_series

## Usage
```
series = MathSeries.new('<name of series>'')
series.print <number>
```

## Examples
```
series = MathSeries.new('number')
series.print 5 #=> [1,2,3,4,5]

series = MathSeries.new('even')
series.print 3 #=> [0,2,4]
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Testing

We use 'minitest' for writing unit tests.
```
rake test
```
## Contributing

If you know any series and wanted to add that to the gem then feel free to do so.
Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/math_series. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

